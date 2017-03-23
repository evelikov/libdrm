AM_CPPFLAGS = \
	-I$(top_srcdir)/include/drm \
	-I$(top_srcdir)/tegra \
	-I$(top_srcdir)

AM_CFLAGS = $(WARN_CFLAGS)

LDADD = \
	$(top_builddir)/libdrm_tegra.la \
	$(top_builddir)/libdrm.la

noinst_PROGRAMS = \
	openclose
