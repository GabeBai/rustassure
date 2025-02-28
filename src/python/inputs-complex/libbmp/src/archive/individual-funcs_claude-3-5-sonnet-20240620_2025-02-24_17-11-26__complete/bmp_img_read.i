typedef long long __int64_t;
typedef long unsigned int __darwin_size_t;
typedef __int64_t __darwin_off_t;
typedef __darwin_size_t size_t;
typedef __darwin_off_t fpos_t;
struct __sbuf {
 unsigned char *_base;
 int _size;
};
struct __sFILEX;
typedef struct __sFILE {
 unsigned char *_p;
 int _r;
 int _w;
 short _flags;
 short _file;
 struct __sbuf _bf;
 int _lbfsize;
 void *_cookie;
 int (* _Nullable _close)(void *);
 int (* _Nullable _read) (void *, char *, int);
 fpos_t (* _Nullable _seek) (void *, fpos_t, int);
 int (* _Nullable _write)(void *, const char *, int);
 struct __sbuf _ub;
 struct __sFILEX *_extra;
 int _ur;
 unsigned char _ubuf[3];
 unsigned char _nbuf[1];
 struct __sbuf _lb;
 int _blksize;
 fpos_t _offset;
} FILE;
int fclose(FILE *);
FILE *fopen(const char * restrict __filename, const char * restrict __mode) __asm("_" "fopen" );
size_t fread(void * restrict __ptr, size_t __size, size_t __nitems, FILE * restrict __stream);
int fseek(FILE *, long, int);
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
typedef struct _bmp_img
{
 bmp_header img_header;
 bmp_pixel **img_pixels;
} bmp_img;
enum bmp_error bmp_header_read (bmp_header*,
                                                FILE*);
void bmp_img_alloc (bmp_img*);
enum bmp_error bmp_img_read (bmp_img*,
                                                const char*);
enum bmp_error
bmp_img_read (bmp_img *img,
              const char *filename)
{
 FILE *img_file = fopen (filename, "rb");
 if (img_file == ((void *)0))
 {
  return BMP_FILE_NOT_OPENED;
 }
 const enum bmp_error err = bmp_header_read (&img->img_header, img_file);
 if (err != BMP_OK)
 {
  fclose (img_file);
  return err;
 }
 bmp_img_alloc (img);
 const size_t h = abs (img->img_header.biHeight);
 const size_t offset = (img->img_header.biHeight > 0 ? h - 1 : 0);
 const size_t padding = ((img->img_header.biWidth) % 4);
 const size_t items = img->img_header.biWidth;
 for (size_t y = 0; y < h; y++)
 {
  if (fread (img->img_pixels[abs (offset - y)], sizeof (bmp_pixel), items, img_file) != items)
  {
   fclose (img_file);
   return BMP_ERROR;
  }
  fseek (img_file, padding, 1);
 }
 fclose (img_file);
 return BMP_OK;
}
