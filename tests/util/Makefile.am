noinst_LTLIBRARIES = \
	libutil.la

libutil_la_CPPFLAGS = \
	-I$(top_srcdir)/include/drm \
	-I$(top_srcdir)

libutil_la_CFLAGS = \
	$(CAIRO_CFLAGS)

libutil_la_SOURCES = \
	common.h \
	format.c \
	format.h \
	pattern.c \
	pattern.h

libutil_la_LIBADD = \
	$(CAIRO_LIBS)
