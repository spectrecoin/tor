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
INCLUDEPATH += $$PWD $$PWD/.deps $$PWD/hs $$PWD/hs/.deps ../ext/trunnel/

HEADERS += \
    $$PWD/hs/cell_common.h \
    $$PWD/hs/cell_establish_intro.h \
    $$PWD/hs/cell_introduce1.h \
    $$PWD/hs/cell_rendezvous.h \
    $$PWD/channelpadding_negotiation.h \
    $$PWD/ed25519_cert.h \
    $$PWD/link_handshake.h \
    $$PWD/pwbox.h \
    $$PWD/trunnel-local.h

SOURCES += \
    $$PWD/hs/cell_common.c \
    $$PWD/hs/cell_establish_intro.c \
    $$PWD/hs/cell_introduce1.c \
    $$PWD/hs/cell_rendezvous.c \
    $$PWD/channelpadding_negotiation.c \
    $$PWD/ed25519_cert.c \
    $$PWD/link_handshake.c \
    $$PWD/pwbox.c
