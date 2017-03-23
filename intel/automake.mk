# Copyright © 2008 Intel Corporation
#
# Permission is hereby granted, free of charge, to any person obtaining a
# copy of this software and associated documentation files (the "Software"),
# to deal in the Software without restriction, including without limitation
# the rights to use, copy, modify, merge, publish, distribute, sublicense,
# and/or sell copies of the Software, and to permit persons to whom the
# Software is furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice (including the next
# paragraph) shall be included in all copies or substantial portions of the
# Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.  IN NO EVENT SHALL
# THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
# FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS
# IN THE SOFTWARE.
#
# Authors:
#    Eric Anholt <eric@anholt.net>

if HAVE_INTEL
inteldir = $(libdir)
intel_LTLIBRARIES = libdrm_intel.la

libdrm_intel_la_CFLAGS = \
	$(AM_CFLAGS) \
	-I$(top_srcdir)/intel \
	$(PCIACCESS_CFLAGS)

libdrm_intel_la_SOURCES = $(INTEL_FILES)
libdrm_intel_la_LDFLAGS = -version-number 1:0:0 -no-undefined
libdrm_intel_la_LIBADD = $(DRIVER_LIBDEPS) $(PCIACCESS_LIBS)

intelincludedir = ${includedir}/libdrm
intelinclude_HEADERS = $(INTEL_H_FILES)

intelpkgconfigdir = @pkgconfigdir@
intelpkgconfig_DATA = intel/libdrm_intel.pc

TESTS += intel/intel-symbol-check
endif

EXTRA_DIST += intel/intel-symbol-check
