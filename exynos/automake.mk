if HAVE_EXYNOS
exynosdir = $(libdir)
exynos_LTLIBRARIES = libdrm_exynos.la

libdrm_exynos_la_CFLAGS = \
	$(AM_CFLAGS) \
	-I${top_srcdir}/exynos

libdrm_exynos_la_SOURCES = $(EXYNOS_FILES)
libdrm_exynos_la_LDFLAGS = -version-number 1:0:0 -no-undefined
libdrm_exynos_la_LIBADD =  $(DRIVER_LIBDEPS)

exynoscommonincludedir = ${includedir}/exynos
exynoscommoninclude_HEADERS = $(EXYNOS_COMMON_H_FILES)

exynosincludedir = ${includedir}/libdrm
exynosinclude_HEADERS = $(EXYNOS_H_FILES)

exynospkgconfigdir = @pkgconfigdir@
exynospkgconfig_DATA = exynos/libdrm_exynos.pc

TESTS += exynos/exynos-symbol-check
endif

EXTRA_DIST+= exynos/exynos-symbol-check
