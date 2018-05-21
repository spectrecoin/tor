DEFINES += BOOST_ASIO_ENABLE_OLD_SERVICES BOOST_SPIRIT_THREADSAFE BOOST_THREAD_USE_LIB

#INCLUDEPATH += C:/Users/Shbli/Workspace/packages/boost-core_x86-windows/include
#INCLUDEPATH += C:/Users/Shbli/Workspace/packages/boost-config_x86-windows/include
#INCLUDEPATH += C:/Users/Shbli/Workspace/packages/boost-type-traits_x86-windows/include
#INCLUDEPATH += C:/Users/Shbli/Workspace/packages/boost-predef_x86-windows/include
#INCLUDEPATH += C:/Users/Shbli/Workspace/packages/boost-assert_x86-windows/include
INCLUDEPATH += C:/Users/Shbli/Workspace/packages/boostinclude/include

LIBS += -LC:/Users/Shbli/Workspace/packages/lua_x86-windows/lib/ -llua

INCLUDEPATH += C:/Users/Shbli/Workspace/packages/lua_x86-windows/include
DEPENDPATH += C:/Users/Shbli/Workspace/packages/lua_x86-windows/include

PRE_TARGETDEPS += C:/Users/Shbli/Workspace/packages/lua_x86-windows/lib/lua.lib

LIBS += -LC:/Users/Shbli/Workspace/packages/boost-chrono_x86-windows/lib/ -lboost_chrono-vc140-mt

INCLUDEPATH += C:/Users/Shbli/Workspace/packages/boost-chrono_x86-windows/include
DEPENDPATH += C:/Users/Shbli/Workspace/packages/boost-chrono_x86-windows/include

PRE_TARGETDEPS += C:/Users/Shbli/Workspace/packages/boost-chrono_x86-windows/lib/boost_chrono-vc140-mt.lib

LIBS += -LC:/Users/Shbli/Workspace/packages/boost-filesystem_x86-windows/lib/ -lboost_filesystem-vc140-mt

INCLUDEPATH += C:/Users/Shbli/Workspace/packages/boost-filesystem_x86-windows/include
DEPENDPATH += C:/Users/Shbli/Workspace/packages/boost-filesystem_x86-windows/include

PRE_TARGETDEPS += C:/Users/Shbli/Workspace/packages/boost-filesystem_x86-windows/lib/boost_filesystem-vc140-mt.lib


LIBS += -LC:/Users/Shbli/Workspace/packages/boost-program-options_x86-windows/lib/ -lboost_program_options-vc140-mt

INCLUDEPATH += C:/Users/Shbli/Workspace/packages/boost-program-options_x86-windows/include
DEPENDPATH += C:/Users/Shbli/Workspace/packages/boost-program-options_x86-windows/include

PRE_TARGETDEPS += C:/Users/Shbli/Workspace/packages/boost-program-options_x86-windows/lib/boost_program_options-vc140-mt.lib


LIBS += -LC:/Users/Shbli/Workspace/packages/boost-system_x86-windows/lib/ -lboost_system-vc140-mt

INCLUDEPATH += C:/Users/Shbli/Workspace/packages/boost-system_x86-windows/include
DEPENDPATH += C:/Users/Shbli/Workspace/packages/boost-system_x86-windows/include

PRE_TARGETDEPS += C:/Users/Shbli/Workspace/packages/boost-system_x86-windows/lib/boost_system-vc140-mt.lib


LIBS += -LC:/Users/Shbli/Workspace/packages/boost-thread_x86-windows/lib/ -lboost_thread-vc140-mt

INCLUDEPATH += C:/Users/Shbli/Workspace/packages/boost-thread_x86-windows/include
DEPENDPATH += C:/Users/Shbli/Workspace/packages/boost-thread_x86-windows/include

PRE_TARGETDEPS += C:/Users/Shbli/Workspace/packages/boost-thread_x86-windows/lib/boost_thread-vc140-mt.lib

LIBS += -LC:/Users/Shbli/Workspace/packages/zlib_x86-windows/lib/ -lzlib

INCLUDEPATH += C:/Users/Shbli/Workspace/packages/zlib_x86-windows/include
DEPENDPATH += C:/Users/Shbli/Workspace/packages/zlib_x86-windows/include

PRE_TARGETDEPS += C:/Users/Shbli/Workspace/packages/zlib_x86-windows/lib/zlib.lib

LIBS += -LC:/Users/Shbli/Workspace/packages/openssl-1.1.0f-vs2017/lib/ -llibcryptoMT

INCLUDEPATH += C:/Users/Shbli/Workspace/packages/openssl-1.1.0f-vs2017/include
DEPENDPATH += C:/Users/Shbli/Workspace/packages/openssl-1.1.0f-vs2017/include

PRE_TARGETDEPS += C:/Users/Shbli/Workspace/packages/openssl-1.1.0f-vs2017/lib/libcryptoMT.lib


LIBS += -LC:/Users/Shbli/Workspace/packages/openssl-1.1.0f-vs2017/lib/ -llibsslMT

INCLUDEPATH += C:/Users/Shbli/Workspace/packages/openssl-1.1.0f-vs2017/include
DEPENDPATH += C:/Users/Shbli/Workspace/packages/openssl-1.1.0f-vs2017/include

PRE_TARGETDEPS += C:/Users/Shbli/Workspace/packages/openssl-1.1.0f-vs2017/lib/libsslMT.lib


LIBS += -LC:/Users/Shbli/Workspace/packages/libevent_x86-windows/lib/ -levent

INCLUDEPATH += C:/Users/Shbli/Workspace/packages/libevent_x86-windows/include
DEPENDPATH += C:/Users/Shbli/Workspace/packages/libevent_x86-windows/include

PRE_TARGETDEPS += C:/Users/Shbli/Workspace/packages/libevent_x86-windows/lib/event.lib


LIBS += -LC:/Users/Shbli/Workspace/packages/libevent_x86-windows/lib/ -levent_core

INCLUDEPATH += C:/Users/Shbli/Workspace/packages/libevent_x86-windows/include
DEPENDPATH += C:/Users/Shbli/Workspace/packages/libevent_x86-windows/include

PRE_TARGETDEPS += C:/Users/Shbli/Workspace/packages/libevent_x86-windows/lib/event_core.lib

LIBS += -LC:/Users/Shbli/Workspace/packages/libevent_x86-windows/lib/ -levent_extra

INCLUDEPATH += C:/Users/Shbli/Workspace/packages/libevent_x86-windows/include
DEPENDPATH += C:/Users/Shbli/Workspace/packages/libevent_x86-windows/include

PRE_TARGETDEPS += C:/Users/Shbli/Workspace/packages/libevent_x86-windows/lib/event_extra.lib

TEMPLATE = app
TARGET = tor

QMAKE_CXXFLAGS += /MD
QMAKE_CXXFLAGS += /MT
QMAKE_CXXFLAGS += -std=c++14

#find . -type d

INCLUDEPATH += $$PWD/../../../adapter $$PWD ./$$PWD/.deps ./$$PWD/fuzz

HEADERS += \
    $$PWD/fuzz/curve25519-ref10.h \
    $$PWD/fuzz/ed25519-donna.h \
    $$PWD/fuzz/ed25519-ref10.h \
    $$PWD/curve25519-donna-32bit.h \
    $$PWD/curve25519-donna-64bit.h \
    $$PWD/curve25519-donna-helpers.h \
    $$PWD/curve25519-donna-sse2.h \
    $$PWD/ed25519-donna-32bit-sse2.h \
    $$PWD/ed25519-donna-32bit-tables.h \
    $$PWD/ed25519-donna-64bit-sse2.h \
    $$PWD/ed25519-donna-64bit-tables.h \
    $$PWD/ed25519-donna-64bit-x86-32bit.h \
    $$PWD/ed25519-donna-64bit-x86.h \
    $$PWD/ed25519-donna-basepoint-table.h \
    $$PWD/ed25519-donna-batchverify.h \
    $$PWD/ed25519-donna-impl-base.h \
    $$PWD/ed25519-donna-impl-sse2.h \
    $$PWD/ed25519-donna-portable-identify.h \
    $$PWD/ed25519-donna-portable.h \
    $$PWD/ed25519-donna.h \
    $$PWD/ed25519-hash-custom.h \
    $$PWD/ed25519-hash.h \
    $$PWD/ed25519-randombytes-custom.h \
    $$PWD/ed25519-randombytes.h \
    $$PWD/ed25519.h \
    $$PWD/ed25519_donna_tor.h \
    $$PWD/modm-donna-32bit.h \
    $$PWD/modm-donna-64bit.h \
    $$PWD/regression.h \
    $$PWD/test-ticks.h

SOURCES += \
    $$PWD/fuzz/curve25519-ref10.c \
    $$PWD/fuzz/ed25519-donna-sse2.c \
    $$PWD/fuzz/ed25519-donna.c \
    $$PWD/fuzz/ed25519-ref10.c \
    $$PWD/fuzz/fuzz-curve25519.c \
    $$PWD/fuzz/fuzz-ed25519.c \
    $$PWD/ed25519.c \
    $$PWD/ed25519_tor.c \
    $$PWD/test-internals.c \
    $$PWD/test.c
