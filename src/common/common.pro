DEFINES += BOOST_ASIO_ENABLE_OLD_SERVICES BOOST_SPIRIT_THREADSAFE BOOST_THREAD_USE_LIB

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
#include "../adapter/"
INCLUDEPATH += ../adapter $$PWD $$PWD/.deps ../ext


OBJECTS += address.obj backtrace.obj compat.obj container.obj di_ops.obj log.obj memarea.obj sandbox.obj util.obj

HEADERS += \
    $$PWD/address.h \
    $$PWD/aes.h \
    $$PWD/backtrace.h \
    $$PWD/buffers.h \
    $$PWD/buffers_tls.h \
    $$PWD/compat.h \
    $$PWD/compat_libevent.h \
    $$PWD/compat_openssl.h \
    $$PWD/compat_rust.h \
    $$PWD/compat_threads.h \
    $$PWD/compat_time.h \
    $$PWD/compress.h \
    $$PWD/compress_lzma.h \
    $$PWD/compress_none.h \
    $$PWD/compress_zlib.h \
    $$PWD/compress_zstd.h \
    $$PWD/confline.h \
    $$PWD/container.h \
    $$PWD/crypto.h \
    $$PWD/crypto_curve25519.h \
    $$PWD/crypto_ed25519.h \
    $$PWD/crypto_format.h \
    $$PWD/crypto_pwbox.h \
    $$PWD/crypto_s2k.h \
    $$PWD/di_ops.h \
    $$PWD/handles.h \
    $$PWD/memarea.h \
    $$PWD/procmon.h \
    $$PWD/pubsub.h \
    $$PWD/sandbox.h \
    $$PWD/storagedir.h \
    $$PWD/testsupport.h \
    $$PWD/timers.h \
    $$PWD/torint.h \
    $$PWD/torlog.h \
    $$PWD/tortls.h \
    $$PWD/util.h \
    $$PWD/util_bug.h \
    $$PWD/util_format.h \
    $$PWD/util_process.h \
    $$PWD/workqueue.h

SOURCES += \
    $$PWD/address.c \
    $$PWD/aes.c \
    $$PWD/backtrace.c \
    $$PWD/buffers.c \
    $$PWD/buffers_tls.c \
    $$PWD/compat.c \
    $$PWD/compat_libevent.c \
    $$PWD/compat_rust.c \
    $$PWD/compat_threads.c \
    $$PWD/compat_time.c \
    $$PWD/compat_winthreads.c \
    $$PWD/compress.c \
    $$PWD/compress_lzma.c \
    $$PWD/compress_none.c \
    $$PWD/compress_zlib.c \
    $$PWD/compress_zstd.c \
    $$PWD/confline.c \
    $$PWD/container.c \
    $$PWD/crypto.c \
    $$PWD/crypto_curve25519.c \
    $$PWD/crypto_ed25519.c \
    $$PWD/crypto_format.c \
    $$PWD/crypto_pwbox.c \
    $$PWD/crypto_s2k.c \
    $$PWD/di_ops.c \
    $$PWD/log.c \
    $$PWD/memarea.c \
    $$PWD/procmon.c \
    $$PWD/pubsub.c \
    $$PWD/sandbox.c \
    $$PWD/storagedir.c \
    $$PWD/timers.c \
    $$PWD/tortls.c \
    $$PWD/util.c \
    $$PWD/util_bug.c \
    $$PWD/util_format.c \
    $$PWD/util_process.c \
    $$PWD/workqueue.c \
    ..\ext\curve25519_donna\curve25519-donna.c
