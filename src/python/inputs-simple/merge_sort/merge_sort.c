#include <time.h>
#include <err.h>
#include <linux/perf_event.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/ioctl.h>
#include <sys/syscall.h>
#include <sys/types.h>
#include <unistd.h>
#include <stdint.h>
#include <inttypes.h>

#define TOTAL_EVENTS 5

static long perf_event_open(struct perf_event_attr *hw_event, pid_t pid,
                            int cpu, int group_fd, unsigned long flags)
{
    return syscall(SYS_perf_event_open, hw_event, pid, cpu, group_fd, flags);
}

void configure_event(struct perf_event_attr *pe, uint32_t type, uint64_t config)
{
    memset(pe, 0, sizeof(struct perf_event_attr));
    pe->type = type;
    pe->size = sizeof(struct perf_event_attr);
    pe->config = config;
    pe->read_format = PERF_FORMAT_GROUP | PERF_FORMAT_ID;
    pe->disabled = 1;
    pe->exclude_kernel = 1;
    pe->exclude_hv = 1;
}

struct read_format
{
    uint64_t nr;
    struct
    {
        uint64_t value;
        uint64_t id;
    } values[TOTAL_EVENTS];
};

void merge(int arr[], int left, int mid, int right)
{
    int i, j, k;
    int n1 = mid - left + 1;
    int n2 = right - mid;

    int *leftArr = (int *)malloc(n1 * sizeof(int));
    int *rightArr = (int *)malloc(n2 * sizeof(int));

    for (i = 0; i < n1; i++)
        leftArr[i] = arr[left + i];
    for (j = 0; j < n2; j++)
        rightArr[j] = arr[mid + 1 + j];

    i = 0;
    j = 0;
    k = left;
    while (i < n1 && j < n2)
    {
        if (leftArr[i] <= rightArr[j])
        {
            arr[k] = leftArr[i];
            i++;
        }
        else
        {
            arr[k] = rightArr[j];
            j++;
        }
        k++;
    }

    while (i < n1)
    {
        arr[k] = leftArr[i];
        i++;
        k++;
    }

    while (j < n2)
    {
        arr[k] = rightArr[j];
        j++;
        k++;
    }
    free(leftArr);
    free(rightArr);
}

void merge_sort(int arr[], int left, int right)
{
    if (left < right)
    {
        int mid = left + (right - left) / 2;
        merge_sort(arr, left, mid);
        merge_sort(arr, mid + 1, right);

        merge(arr, left, mid, right);
    }
}

double diff_timespec(struct timespec *time1, struct timespec *time0)
{
    return (time1->tv_sec - time0->tv_sec) + (time1->tv_nsec - time0->tv_nsec) / 1000000000.0;
}

int main(int argc, char *argv[])
{
    if (argc < 2 || argc > 3)
    {
        printf("Usage: %s <array_size> [--perf]\n", argv[0]);
        printf("  --perf: Enable performance event monitoring\n");
        return 1;
    }

    int size = atoi(argv[1]);
    if (size <= 0)
    {
        printf("Error: array size must be positive integers.\n");
        return 1;
    }

    int enable_perf = (argc == 3 && strcmp(argv[2], "--perf") == 0);


    struct timespec start_time, end_time;
    int *arr = (int *)malloc(size * sizeof(int));
    if (!arr)
    {
        printf("Error: Memory allocation failed.\n");
        return 1;
    }

    srand(10000);
    for (int i = 0; i < size; i++)
    {
        arr[i] = rand();
    }

    int fd[TOTAL_EVENTS];
    int id[TOTAL_EVENTS];
    uint64_t pe_val[TOTAL_EVENTS];
    struct perf_event_attr pe[TOTAL_EVENTS];
    struct read_format counter_results;

    if (enable_perf) {
        // Configure desired events
        configure_event(&pe[0], PERF_TYPE_HARDWARE, PERF_COUNT_HW_CPU_CYCLES);
        configure_event(&pe[1], PERF_TYPE_HARDWARE, PERF_COUNT_HW_INSTRUCTIONS);
        configure_event(&pe[2], PERF_TYPE_HW_CACHE,
                        (PERF_COUNT_HW_CACHE_L1D | (PERF_COUNT_HW_CACHE_OP_READ << 8) |
                         (PERF_COUNT_HW_CACHE_RESULT_MISS << 16)));
        configure_event(&pe[3], PERF_TYPE_HW_CACHE,
                        (PERF_COUNT_HW_CACHE_LL | (PERF_COUNT_HW_CACHE_OP_READ << 8) |
                         (PERF_COUNT_HW_CACHE_RESULT_MISS << 16)));
        configure_event(&pe[4], PERF_TYPE_HARDWARE, PERF_COUNT_HW_BRANCH_MISSES);

        // Open group leader
        fd[0] = perf_event_open(&pe[0], 0, -1, -1, 0);
        ioctl(fd[0], PERF_EVENT_IOC_ID, &id[0]);

        // Open other events as part of the group
        for (int i = 1; i < TOTAL_EVENTS; i++)
        {
            fd[i] = perf_event_open(&pe[i], 0, -1, fd[0], 0);
            ioctl(fd[i], PERF_EVENT_IOC_ID, &id[i]);
        }

        ioctl(fd[0], PERF_EVENT_IOC_RESET, PERF_IOC_FLAG_GROUP);
        ioctl(fd[0], PERF_EVENT_IOC_ENABLE, PERF_IOC_FLAG_GROUP);
    }

    clock_gettime(CLOCK_MONOTONIC, &start_time);
    merge_sort(arr, 0, size - 1);
    clock_gettime(CLOCK_MONOTONIC, &end_time);

    if (enable_perf) {
        ioctl(fd[0], PERF_EVENT_IOC_DISABLE, PERF_IOC_FLAG_GROUP);
        ssize_t n = read(fd[0], &counter_results, sizeof(struct read_format));
        if (n != sizeof(struct read_format))
        {
            perror("read");
        }

        printf("Num events captured: %" PRIu64 "\n", counter_results.nr);
        for (int i = 0; i < counter_results.nr; i++)
        {
            for (int j = 0; j < TOTAL_EVENTS; j++)
            {
                if (counter_results.values[i].id == id[j])
                {
                    pe_val[j] = counter_results.values[i].value;
                }
            }
        }

        printf("CPU cycles:             %" PRIu64 "\n", pe_val[0]);
        printf("Instructions retired:   %" PRIu64 "\n", pe_val[1]);
        printf("L1 DCache read misses:   %" PRIu64 "\n", pe_val[2]);
        printf("Last level DCache read misses:   %" PRIu64 "\n", pe_val[3]);
        printf("Branch misses:           %" PRIu64 "\n", pe_val[4]);
        printf("IPC (instructions/cycle): %.2f\n", (double)pe_val[1] / pe_val[0]);

        for (int i = 0; i < TOTAL_EVENTS; i++)
        {
            close(fd[i]);
        }
    }

    double time_elapsed = diff_timespec(&end_time, &start_time);
    printf("Time taken to sort the array of size %d: %f seconds\n", size, time_elapsed);

    free(arr);
    return 0;
}
