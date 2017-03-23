AM_CFLAGS = \
	-pthread \
	$(WARN_CFLAGS) \
	-I$(top_srcdir)/include/drm \
	-I$(top_srcdir)/nouveau \
	-I$(top_srcdir)

LDADD = \
	$(top_builddir)/libdrm_nouveau.la \
	$(top_builddir)/libdrm.la \
	-ldl

TESTS = threaded

check_PROGRAMS = $(TESTS)

