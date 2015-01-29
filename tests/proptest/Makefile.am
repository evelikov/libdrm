AM_CFLAGS = \
	-I$(top_srcdir)/include/drm \
	-I$(top_srcdir)/tests \
	-I$(top_srcdir)

noinst_PROGRAMS = \
	proptest

proptest_SOURCES = \
	proptest.c
proptest_LDADD = \
	$(top_builddir)/libdrm.la \
	$(top_builddir)/tests/util/libutil.la
