if HAVE_OMAP
omapdir = $(libdir)
omap_LTLIBRARIES = libdrm_omap.la

libdrm_omap_la_SOURCES = omap/omap_drm.c
libdrm_omap_la_LDFLAGS = -version-number 1:0:0 -no-undefined
libdrm_omap_la_LIBADD = $(DRIVER_LIBDEPS)

omapcommonincludedir = ${includedir}/omap
omapcommoninclude_HEADERS = omap/omap_drm.h

omapincludedir = ${includedir}/libdrm
omapinclude_HEADERS = omap/omap_drmif.h

omappkgconfigdir = @pkgconfigdir@
omappkgconfig_DATA = omap/libdrm_omap.pc

TESTS += omap/omap-symbol-check
endif

EXTRA_DIST += omap/omap-symbol-check
