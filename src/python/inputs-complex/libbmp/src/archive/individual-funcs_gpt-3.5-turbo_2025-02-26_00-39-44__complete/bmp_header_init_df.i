struct __sbuf {
 unsigned char *_base;
 int _size;
};
struct __sFILEX;
union sigval {
 int sival_int;
 void *sival_ptr;
};
union __sigaction_u {
 void (*__sa_handler)(int);
 void (*__sa_sigaction)(int, struct __siginfo *,
     void *);
};
typedef unsigned short uint16_t;
typedef unsigned int uint32_t;
typedef unsigned long long uint64_t;
struct _OSUnalignedU16 {
 volatile uint16_t __val;
} __attribute__((__packed__));
struct _OSUnalignedU32 {
 volatile uint32_t __val;
} __attribute__((__packed__));
struct _OSUnalignedU64 {
 volatile uint64_t __val;
} __attribute__((__packed__));
union wait {
 int w_status;
 struct {
  unsigned int w_Termsig:7,
      w_Coredump:1,
      w_Retcode:8,
      w_Filler:16;
 } w_T;
 struct {
  unsigned int w_Stopval:8,
      w_Stopsig:8,
      w_Filler:16;
 } w_S;
};
int abs(int) __attribute__((__const__));
enum bmp_error
{
 BMP_FILE_NOT_OPENED = -4,
 BMP_HEADER_NOT_INITIALIZED,
 BMP_INVALID_FILE,
 BMP_ERROR,
 BMP_OK = 0
};
typedef struct _bmp_header
{
 unsigned int bfSize;
 unsigned int bfReserved;
 unsigned int bfOffBits;
 unsigned int biSize;
 int biWidth;
 int biHeight;
 unsigned short biPlanes;
 unsigned short biBitCount;
 unsigned int biCompression;
 unsigned int biSizeImage;
 int biXPelsPerMeter;
 int biYPelsPerMeter;
 unsigned int biClrUsed;
 unsigned int biClrImportant;
} bmp_header;
typedef struct _bmp_pixel
{
 unsigned char blue;
 unsigned char green;
 unsigned char red;
} bmp_pixel;
void bmp_header_init_df (bmp_header*,
                                                const int,
                                                const int);
void
bmp_header_init_df (bmp_header *header,
                    const int width,
                    const int height)
{
 header->bfSize = (sizeof (bmp_pixel) * width + ((width) % 4))
                   * abs (height);
 header->bfReserved = 0;
 header->bfOffBits = 54;
 header->biSize = 40;
 header->biWidth = width;
 header->biHeight = height;
 header->biPlanes = 1;
 header->biBitCount = 24;
 header->biCompression = 0;
 header->biSizeImage = 0;
 header->biXPelsPerMeter = 0;
 header->biYPelsPerMeter = 0;
 header->biClrUsed = 0;
 header->biClrImportant = 0;
}
