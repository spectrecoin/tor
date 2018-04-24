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
INCLUDEPATH += $$PWD $$PWD/.deps

HEADERS += \
    $$PWD/api.h \
    $$PWD/base.h \
    $$PWD/base2.h \
    $$PWD/crypto_hash_sha512.h \
    $$PWD/crypto_int32.h \
    $$PWD/crypto_int64.h \
    $$PWD/crypto_sign.h \
    $$PWD/crypto_uint32.h \
    $$PWD/crypto_uint64.h \
    $$PWD/crypto_verify_32.h \
    $$PWD/d.h \
    $$PWD/d2.h \
    $$PWD/ed25519_ref10.h \
    $$PWD/fe.h \
    $$PWD/ge.h \
    $$PWD/ge_add.h \
    $$PWD/ge_madd.h \
    $$PWD/ge_msub.h \
    $$PWD/ge_p2_dbl.h \
    $$PWD/ge_sub.h \
    $$PWD/pow22523.h \
    $$PWD/pow225521.h \
    $$PWD/randombytes.h \
    $$PWD/sc.h \
    $$PWD/sqrtm1.h

SOURCES += \
    $$PWD/blinding.c \
    $$PWD/fe_0.c \
    $$PWD/fe_1.c \
    $$PWD/fe_add.c \
    $$PWD/fe_cmov.c \
    $$PWD/fe_copy.c \
    $$PWD/fe_frombytes.c \
    $$PWD/fe_invert.c \
    $$PWD/fe_isnegative.c \
    $$PWD/fe_isnonzero.c \
    $$PWD/fe_mul.c \
    $$PWD/fe_neg.c \
    $$PWD/fe_pow22523.c \
    $$PWD/fe_sq.c \
    $$PWD/fe_sq2.c \
    $$PWD/fe_sub.c \
    $$PWD/fe_tobytes.c \
    $$PWD/ge_add.c \
    $$PWD/ge_double_scalarmult.c \
    $$PWD/ge_frombytes.c \
    $$PWD/ge_madd.c \
    $$PWD/ge_msub.c \
    $$PWD/ge_p1p1_to_p2.c \
    $$PWD/ge_p1p1_to_p3.c \
    $$PWD/ge_p2_0.c \
    $$PWD/ge_p2_dbl.c \
    $$PWD/ge_p3_0.c \
    $$PWD/ge_p3_dbl.c \
    $$PWD/ge_p3_to_cached.c \
    $$PWD/ge_p3_to_p2.c \
    $$PWD/ge_p3_tobytes.c \
    $$PWD/ge_precomp_0.c \
    $$PWD/ge_scalarmult_base.c \
    $$PWD/ge_sub.c \
    $$PWD/ge_tobytes.c \
    $$PWD/keyconv.c \
    $$PWD/keypair.c \
    $$PWD/open.c \
    $$PWD/sc_muladd.c \
    $$PWD/sc_reduce.c \
    $$PWD/sign.c
