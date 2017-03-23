if HAVE_NOUVEAU
nouveaudir = $(libdir)
nouveau_LTLIBRARIES = libdrm_nouveau.la

libdrm_nouveau_la_CFLAGS = \
	$(AM_CFLAGS) \
	-I${top_srcdir}/nouveau \
	-DDEBUG

libdrm_nouveau_la_SOURCES = $(NOUVEAU_FILES)
libdrm_nouveau_la_LDFLAGS = -version-number 2:0:0 -no-undefined
libdrm_nouveau_la_LIBADD = $(DRIVER_LIBDEPS)

nouveauincludedir = ${includedir}/libdrm/nouveau
nouveauinclude_HEADERS = $(NOUVEAU_H_FILES)

nouveaunvifincludedir = ${includedir}/libdrm/nouveau/nvif
nouveaunvifinclude_HEADERS = $(NOUVEAU_IF_H_FILES)

nouveaupkgconfigdir = @pkgconfigdir@
nouveaupkgconfig_DATA = nouveau/libdrm_nouveau.pc

TESTS += nouveau/nouveau-symbol-check
endif

EXTRA_DIST += nouveau/nouveau-symbol-check
