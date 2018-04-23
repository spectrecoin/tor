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
INCLUDEPATH += ../adapter $$PWD $$PWD/.deps

HEADERS += \
    $$PWD/addressmap.h \
    $$PWD/bridges.h \
    $$PWD/channel.h \
    $$PWD/channelpadding.h \
    $$PWD/channeltls.h \
    $$PWD/circpathbias.h \
    $$PWD/circuitbuild.h \
    $$PWD/circuitlist.h \
    $$PWD/circuitmux.h \
    $$PWD/circuitmux_ewma.h \
    $$PWD/circuitstats.h \
    $$PWD/circuituse.h \
    $$PWD/command.h \
    $$PWD/config.h \
    $$PWD/confparse.h \
    $$PWD/connection.h \
    $$PWD/connection_edge.h \
    $$PWD/connection_or.h \
    $$PWD/conscache.h \
    $$PWD/consdiff.h \
    $$PWD/consdiffmgr.h \
    $$PWD/control.h \
    $$PWD/cpuworker.h \
    $$PWD/dircollate.h \
    $$PWD/directory.h \
    $$PWD/dirserv.h \
    $$PWD/dirvote.h \
    $$PWD/dns.h \
    $$PWD/dns_structs.h \
    $$PWD/dnsserv.h \
    $$PWD/entrynodes.h \
    $$PWD/ext_orport.h \
    $$PWD/fp_pair.h \
    $$PWD/geoip.h \
    $$PWD/hibernate.h \
    $$PWD/hs_cache.h \
    $$PWD/hs_cell.h \
    $$PWD/hs_circuit.h \
    $$PWD/hs_circuitmap.h \
    $$PWD/hs_client.h \
    $$PWD/hs_common.h \
    $$PWD/hs_config.h \
    $$PWD/hs_descriptor.h \
    $$PWD/hs_ident.h \
    $$PWD/hs_intropoint.h \
    $$PWD/hs_ntor.h \
    $$PWD/hs_service.h \
    $$PWD/keypin.h \
    $$PWD/main.h \
    $$PWD/microdesc.h \
    $$PWD/networkstatus.h \
    $$PWD/nodelist.h \
    $$PWD/ntmain.h \
    $$PWD/onion.h \
    $$PWD/onion_fast.h \
    $$PWD/onion_ntor.h \
    $$PWD/onion_tap.h \
    $$PWD/or.h \
    $$PWD/parsecommon.h \
    $$PWD/periodic.h \
    $$PWD/policies.h \
    $$PWD/proto_cell.h \
    $$PWD/proto_control0.h \
    $$PWD/proto_ext_or.h \
    $$PWD/proto_http.h \
    $$PWD/proto_socks.h \
    $$PWD/protover.h \
    $$PWD/reasons.h \
    $$PWD/relay.h \
    $$PWD/rendcache.h \
    $$PWD/rendclient.h \
    $$PWD/rendcommon.h \
    $$PWD/rendmid.h \
    $$PWD/rendservice.h \
    $$PWD/rephist.h \
    $$PWD/replaycache.h \
    $$PWD/router.h \
    $$PWD/routerkeys.h \
    $$PWD/routerlist.h \
    $$PWD/routerparse.h \
    $$PWD/routerset.h \
    $$PWD/scheduler.h \
    $$PWD/shared_random.h \
    $$PWD/shared_random_state.h \
    $$PWD/statefile.h \
    $$PWD/status.h \
    $$PWD/torcert.h \
    $$PWD/transports.h

SOURCES += \
    $$PWD/addressmap.c \
    $$PWD/bridges.c \
    $$PWD/channel.c \
    $$PWD/channelpadding.c \
    $$PWD/channeltls.c \
    $$PWD/circpathbias.c \
    $$PWD/circuitbuild.c \
    $$PWD/circuitlist.c \
    $$PWD/circuitmux.c \
    $$PWD/circuitmux_ewma.c \
    $$PWD/circuitstats.c \
    $$PWD/circuituse.c \
    $$PWD/command.c \
    $$PWD/config.c \
    $$PWD/confparse.c \
    $$PWD/connection.c \
    $$PWD/connection_edge.c \
    $$PWD/connection_or.c \
    $$PWD/conscache.c \
    $$PWD/consdiff.c \
    $$PWD/consdiffmgr.c \
    $$PWD/control.c \
    $$PWD/cpuworker.c \
    $$PWD/dircollate.c \
    $$PWD/directory.c \
    $$PWD/dirserv.c \
    $$PWD/dirvote.c \
    $$PWD/dns.c \
    $$PWD/dnsserv.c \
    $$PWD/entrynodes.c \
    $$PWD/ext_orport.c \
    $$PWD/fp_pair.c \
    $$PWD/geoip.c \
    $$PWD/hibernate.c \
    $$PWD/hs_cache.c \
    $$PWD/hs_cell.c \
    $$PWD/hs_circuit.c \
    $$PWD/hs_circuitmap.c \
    $$PWD/hs_client.c \
    $$PWD/hs_common.c \
    $$PWD/hs_config.c \
    $$PWD/hs_descriptor.c \
    $$PWD/hs_ident.c \
    $$PWD/hs_intropoint.c \
    $$PWD/hs_ntor.c \
    $$PWD/hs_service.c \
    $$PWD/keypin.c \
    $$PWD/main.c \
    $$PWD/microdesc.c \
    $$PWD/networkstatus.c \
    $$PWD/nodelist.c \
    $$PWD/ntmain.c \
    $$PWD/onion.c \
    $$PWD/onion_fast.c \
    $$PWD/onion_ntor.c \
    $$PWD/onion_tap.c \
    $$PWD/parsecommon.c \
    $$PWD/periodic.c \
    $$PWD/policies.c \
    $$PWD/proto_cell.c \
    $$PWD/proto_control0.c \
    $$PWD/proto_ext_or.c \
    $$PWD/proto_http.c \
    $$PWD/proto_socks.c \
    $$PWD/protover.c \
    $$PWD/reasons.c \
    $$PWD/relay.c \
    $$PWD/rendcache.c \
    $$PWD/rendclient.c \
    $$PWD/rendcommon.c \
    $$PWD/rendmid.c \
    $$PWD/rendservice.c \
    $$PWD/rephist.c \
    $$PWD/replaycache.c \
    $$PWD/router.c \
    $$PWD/routerkeys.c \
    $$PWD/routerlist.c \
    $$PWD/routerparse.c \
    $$PWD/routerset.c \
    $$PWD/scheduler.c \
    $$PWD/scheduler_kist.c \
    $$PWD/scheduler_vanilla.c \
    $$PWD/shared_random.c \
    $$PWD/shared_random_state.c \
    $$PWD/statefile.c \
    $$PWD/status.c \
    $$PWD/tor_main.c \
    $$PWD/torcert.c \
    $$PWD/transports.c
