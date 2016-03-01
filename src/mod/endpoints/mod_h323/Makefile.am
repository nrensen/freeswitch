include $(top_srcdir)/build/modmake.rulesam
MODNAME=mod_h323

mod_LTLIBRARIES = mod_h323.la
mod_h323_la_SOURCES  = mod_h323.cpp
mod_h323_la_CPPFLAGS = $(AM_CPPFLAGS) -I. -DPTRACING=1 -D_REENTRANT
mod_h323_la_CPPFLAGS += -DPTRACING=1 -D_REENTRANT
mod_h323_la_CXXFLAGS = $(AM_CXXFLAGS) -fno-exceptions $(H323_CXXFLAGS)
mod_h323_la_LIBADD   = $(switch_builddir)/libfreeswitch.la $(H323_LIBS)
mod_h323_la_LDFLAGS  = -avoid-version -module -no-undefined -shared

if IS64BITLINUX
mod_h323_la_CPPFLAGS += -DP_64BIT
endif
