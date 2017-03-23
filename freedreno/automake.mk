if HAVE_FREEDRENO
freedrenodir = $(libdir)
freedreno_LTLIBRARIES = libdrm_freedreno.la

libdrm_freedreno_la_CFLAGS = \
	$(AM_CFLAGS) \
	-I$(top_srcdir)/freedreno

libdrm_freedreno_la_SOURCES = $(FREEDRENO_FILES)
if HAVE_FREEDRENO_KGSL
libdrm_freedreno_la_SOURCES += $(FREEDRENO_KGSL_FILES)
endif

libdrm_freedreno_la_LDFLAGS = -version-number 1:0:0 -no-undefined
libdrm_freedreno_la_LIBADD = $(DRIVER_LIBDEPS)

freedrenoincludedir = ${includedir}/freedreno
freedrenoinclude_HEADERS = $(FREEDRENO_H_FILES)

freedrenopkgconfigdir = @pkgconfigdir@
freedrenopkgconfig_DATA = freedreno/libdrm_freedreno.pc

TESTS += freedreno/freedreno-symbol-check
endif

EXTRA_DIST += freedreno/freedreno-symbol-check
