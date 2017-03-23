if HAVE_ETNAVIV
etnavivdir = $(libdir)
etnaviv_LTLIBRARIES = libdrm_etnaviv.la

libdrm_etnaviv_la_SOURCES = $(ETNAVIV_FILES)
libdrm_etnaviv_la_LDFLAGS = -version-number 1:0:0 -no-undefined
libdrm_etnaviv_la_LIBADD = $(DRIVER_LIBDEPS)

etnavivincludedir = ${includedir}/libdrm
etnavivinclude_HEADERS = $(ETNAVIV_H_FILES)

etnavivpkgconfigdir = @pkgconfigdir@
etnavivpkgconfig_DATA = etnaviv/libdrm_etnaviv.pc

TESTS += etnaviv/etnaviv-symbol-check
endif

EXTRA_DIST += etnaviv/etnaviv-symbol-check
