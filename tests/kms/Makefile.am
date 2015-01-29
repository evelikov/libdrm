AM_CPPFLAGS = \
	-I$(top_srcdir)/include/drm \
	-I$(top_srcdir)/tests \
	-I$(top_srcdir)

AM_CFLAGS = \
	$(WARN_CFLAGS)

noinst_LTLIBRARIES = libkms-test.la

noinst_HEADERS = \
	libkms-test.h

libkms_test_la_SOURCES = \
	libkms-test-crtc.c \
	libkms-test-device.c \
	libkms-test-framebuffer.c \
	libkms-test-plane.c \
	libkms-test-screen.c

libkms_test_la_LIBADD = \
	$(top_builddir)/libdrm.la

if HAVE_INSTALL_TESTS
bin_PROGRAMS = \
	kms-steal-crtc \
	kms-universal-planes
else
noinst_PROGRAMS = \
	kms-steal-crtc \
	kms-universal-planes
endif

TEST_LIBS = libkms-test.la

if HAVE_CAIRO
TEST_LIBS += $(CAIRO_LIBS)
endif

kms_steal_crtc_SOURCES = kms-steal-crtc.c
kms_steal_crtc_LDADD = ../util/libutil.la $(TEST_LIBS)

kms_universal_planes_SOURCES = kms-universal-planes.c
kms_universal_planes_LDADD = libkms-test.la
