CONFIG = config.mk
include $(CONFIG)

# 使用自定义的 clang_wrapper.sh 作为编译器
CC = ./clang-wrapper.sh

HDR_SEMIPUBLIC =\
	zahl/inlines.h\
	zahl/internals.h\
	zahl/memory.h

HDR_PRIVATE =\
	src/internals.h

FUN =\
	zadd\
	zand\
	zbset\
	zdivmod\
	zerror\
	zfree\
	zgcd\
	zload\
	zlsh\
	zmodmul\
	zmodpow\
	zmodpowu\
	zmodsqr\
	zmul\
	znot\
	zor\
	zperror\
	zpow\
	zpowu\
	zptest\
	zrand\
	zrsh\
	zsets\
	zsetup\
	zsqr\
	zstr\
	zstr_length\
	zsub\
	ztrunc\
	zunsetup\
	zxor

INLINE_FUN =\
	zabs\
	zbits\
	zbtest\
	zcmp\
	zcmpi\
	zcmpmag\
	zcmpu\
	zdiv\
	zeven\
	zeven_nonzero\
	zinit\
	zlsb\
	zmod\
	zneg\
	zodd\
	zodd_nonzero\
	zsave\
	zset\
	zseti\
	zsetu\
	zsignum\
	zsplit\
	zswap\
	zzero

DOC =\
	refsheet.pdf\
	libzahl.pdf

TEXSRC =\
	doc/libzahl.tex\
	doc/what-is-libzahl.tex\
	doc/libzahls-design.tex\
	doc/get-started.tex\
	doc/miscellaneous.tex\
	doc/arithmetic.tex\
	doc/bit-operations.tex\
	doc/number-theory.tex\
	doc/random-numbers.tex\
	doc/not-implemented.tex\
	doc/exercises.tex

HDR_PUBLIC = zahl.h $(HDR_SEMIPUBLIC)
HDR        = $(HDR_PUBLIC) $(HDR_PRIVATE)
OBJ        = $(FUN:=.o) allocator.o
MAN3       = $(FUN:=.3) $(INLINE_FUN:=.3)
MAN7       = libzahl.7

VPATH = src

# Benchmark configuration
BENCHMARK_LIB_            = libzahl.a
BENCHMARK_LIB_zahl        = libzahl.a
BENCHMARK_LIB_libzahl     = libzahl.a
BENCHMARK_LIB_tommath     = -ltommath
BENCHMARK_LIB_libtommath  = -ltommath
BENCHMARK_LIB_gmp         = -lgmp
BENCHMARK_LIB_libgmp      = -lgmp
BENCHMARK_LIB_tfm         = libtfm.a
BENCHMARK_LIB_libtfm      = libtfm.a
BENCHMARK_LIB_hebimath    = libhebimath.a
BENCHMARK_LIB_libhebimath = libhebimath.a

BENCHMARK_DEP_            = libzahl.a
BENCHMARK_DEP_zahl        = libzahl.a
BENCHMARK_DEP_libzahl     = libzahl.a
BENCHMARK_DEP_tommath     = bench/libtommath.h
BENCHMARK_DEP_libtommath  = bench/libtommath.h
BENCHMARK_DEP_gmp         = bench/libgmp.h
BENCHMARK_DEP_libgmp      = bench/libgmp.h
BENCHMARK_DEP_tfm         = bench/libtfm.h
BENCHMARK_DEP_libtfm      = bench/libtfm.h
BENCHMARK_DEP_hebimath    = bench/libhebimath.h
BENCHMARK_DEP_libhebimath = bench/libhebimath.h

BENCHMARK_CPP_tommath     = '-DBENCHMARK_LIB="libtommath.h"'
BENCHMARK_CPP_libtommath  = '-DBENCHMARK_LIB="libtommath.h"'
BENCHMARK_CPP_gmp         = '-DBENCHMARK_LIB="libgmp.h"'
BENCHMARK_CPP_libgmp      = '-DBENCHMARK_LIB="libgmp.h"'
BENCHMARK_CPP_tfm         = '-DBENCHMARK_LIB="libtfm.h"'
BENCHMARK_CPP_libtfm      = '-DBENCHMARK_LIB="libtfm.h"'
BENCHMARK_CPP_hebimath    = '-DBENCHMARK_LIB="libhebimath.h"'
BENCHMARK_CPP_libhebimath = '-DBENCHMARK_LIB="libhebimath.h"'

BENCHMARK_C_hebimath      = -static
BENCHMARK_C_libhebimath   = -static

CPPFLAGS += $(BENCHMARK_CPP_$(BENCHMARK_LIB))

CFLAGS_WITHOUT_O = $$(printf '%s\n' $(CFLAGS) | sed '/^-O.*$$/d')


all: libzahl.a $(DOC)

# 修改的部分：使用 clang_wrapper.sh 生成 .i 和 .ll 文件
%.o: %.c $(HDR) $(CONFIG)
	$(CC) $(CFLAGS) $(CPPFLAGS) -c -o $@ $<

# 使用 clang_wrapper.sh 生成静态库
libzahl.a: $(OBJ)
	$(AR) -rcs $@ $?

# 生成随机测试用例
test-random.c: test-generate.py
	./test-generate.py > test-random.c

# 测试用例，禁用优化，生成 .i 和 .ll
test: test.c libzahl.a test-random.c
	$(CC) $(LDFLAGS) $(CFLAGS_WITHOUT_O) -O0 $(CPPFLAGS) -o $@ test.c libzahl.a

# 基准测试
benchmark: bench/benchmark.c bench/util.c bench/util.h $(BENCHMARK_DEP_$(BENCHMARK_LIB))
	$(CC) $(LDFLAGS) $(CFLAGS) $(CPPFLAGS) -o $@ bench/benchmark.c bench/util.c \
		$(BENCHMARK_LIB_$(BENCHMARK_LIB)) $(BENCHMARK_C_$(BENCHMARK_LIB))

benchmark-func: bench/benchmark-func.c bench/util.c bench/util.h $(BENCHMARK_DEP_$(BENCHMARK_LIB))
	$(CC) $(LDFLAGS) $(CFLAGS) $(CPPFLAGS) -o $@ bench/benchmark-func.c bench/util.c \
		$(BENCHMARK_LIB_$(BENCHMARK_LIB)) $(BENCHMARK_C_$(BENCHMARK_LIB))

benchmark-zrand: bench/benchmark-zrand.c bench/util.c bench/util.h libzahl.a
	$(CC) $(LDFLAGS) $(CFLAGS) $(CPPFLAGS) -o $@ bench/benchmark-zrand.c bench/util.c libzahl.a

# 文档生成
refsheet.pdf: doc/refsheet.tex
	pdflatex doc/refsheet.tex </dev/null
	pdflatex doc/refsheet.tex </dev/null
	-@printf 'refsheet.%s\n' aux log | xargs rm -- 2>/dev/null

libzahl.pdf: $(TEXSRC)
	pdflatex doc/libzahl.tex </dev/null
	pdflatex doc/libzahl.tex </dev/null
	-@printf 'libzahl.%s\n' aux idx log maf toc out | xargs rm -- libzahl.mtc* 2>/dev/null

# 测试执行
check: test
	./test

# 安装
install: libzahl.a
	mkdir -p -- "$(DESTDIR)$(EXECPREFIX)/lib"
	mkdir -p -- "$(DESTDIR)$(PREFIX)/include/zahl"
	mkdir -p -- "$(DESTDIR)$(MANPREFIX)/man3"
	mkdir -p -- "$(DESTDIR)$(MANPREFIX)/man7"
	mkdir -p -- "$(DESTDIR)$(DOCPREFIX)/libzahl"
	cp -- libzahl.a "$(DESTDIR)$(EXECPREFIX)/lib"
	cp -- zahl.h "$(DESTDIR)$(PREFIX)/include"
	cp -- $(HDR_SEMIPUBLIC) "$(DESTDIR)$(PREFIX)/include/zahl"

# 清理编译输出
clean:
	-rm -- *.o *.su *.a *.so test test-random.c *.i *.ll 2>/dev/null
	-rm -- benchmark benchmark-zrand benchmark-func 2>/dev/null
	-rm -- refsheet.pdf libzahl.pdf 2>/dev/null

.PHONY: all check clean install uninstall
