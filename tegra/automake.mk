if HAVE_TEGRA
tegradir = $(libdir)
tegra_LTLIBRARIES = libdrm_tegra.la

libdrm_tegra_la_SOURCES = $(TEGRA_FILES)
libdrm_tegra_la_LDFLAGS = -version-number 0:0:0 -no-undefined
libdrm_tegra_la_LIBADD = $(DRIVER_LIBDEPS)

tegraincludedir = ${includedir}/libdrm
tegrainclude_HEADERS = $(TEGRA_H_FILES)

tegrapkgconfigdir = @pkgconfigdir@
tegrapkgconfig_DATA = tegra/libdrm_tegra.pc

TESTS += tegra/tegra-symbol-check
endif

EXTRA_DIST += tegra/tegra-symbol-check
