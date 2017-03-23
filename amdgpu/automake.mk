# Copyright © 2008 Jérôme Glisse
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
#    Jérôme Glisse <glisse@freedesktop.org>

if HAVE_AMDGPU
amdgpudir = $(libdir)
amdgpu_LTLIBRARIES = libdrm_amdgpu.la

libdrm_amdgpu_la_SOURCES = $(AMDGPU_FILES)
libdrm_amdgpu_la_LDFLAGS = -version-number 1:0:0 -no-undefined
libdrm_amdgpu_la_LIBADD = $(DRIVER_LIBDEPS)

amdgpuincludedir = ${includedir}/libdrm
amdgpuinclude_HEADERS = $(AMDGPU_H_FILES)

amdgpupkgconfigdir = @pkgconfigdir@
amdgpupkgconfig_DATA = amdgpu/libdrm_amdgpu.pc

TESTS += amdgpu/amdgpu-symbol-check
endif
EXTRA_DIST += amdgpu/amdgpu-symbol-check
