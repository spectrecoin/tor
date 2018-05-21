#TEMPLATE = app
#TARGET = spectre
##find . -type d
#QT += testlib webenginewidgets webchannel

#TEMPLATE = subdirs

#SUBDIRS = \
#    common \   # sub-project names
#    donna \   # sub-project names
#    keccak \   # sub-project names
#    or \   # sub-project names
#    ref10 \   # sub-project names
#    trunnel \   # sub-project names

#common.subdir = $$PWD/src/common
#donna.subdir = $$PWD/src/ext/ed25519/donna
#keccak.subdir = $$PWD/src/ext/keccak-tiny
#or.subdir = $$PWD/src/or
#ref10.subdir = $$PWD/src/ext/ed25519/ref10
#trunnel.subdir = $$PWD/src/trunnel

#common.depends = trunnel

#  CONFIG += ordered
#Command to install dependencies
#vcpkg.exe install boost:x64-windows-static berkeleydb:x64-windows-static leveldb:x64-windows-static libevent:x64-windows-static lua:x64-windows-static openssl:x64-windows-static zlib:x64-windows-static
DEFINES += BOOST_ASIO_ENABLE_OLD_SERVICES BOOST_SPIRIT_THREADSAFE BOOST_THREAD_USE_LIB



INCLUDEPATH += $$PWD/../packages64bit/include
DEPENDPATH += $$PWD/../packages64bit/include

LIBS += -L$$PWD/../packages64bit/lib/ -llua
PRE_TARGETDEPS += $$PWD/../packages64bit/lib/lua.lib
LIBS += -L$$PWD/../packages64bit/lib -lboost_chrono-vc140-mt
PRE_TARGETDEPS += $$PWD/../packages64bit/lib/boost_chrono-vc140-mt.lib
LIBS += -L$$PWD/../packages64bit/lib/ -lboost_filesystem-vc140-mt
PRE_TARGETDEPS += $$PWD/../packages64bit/lib/boost_filesystem-vc140-mt.lib
LIBS += -L$$PWD/../packages64bit/lib/ -lboost_program_options-vc140-mt
PRE_TARGETDEPS += $$PWD/../packages64bit/lib//boost_program_options-vc140-mt.lib
LIBS += -L$$PWD/../packages64bit/lib/ -lboost_system-vc140-mt
PRE_TARGETDEPS += $$PWD/../packages64bit/lib//boost_system-vc140-mt.lib
LIBS += -L$$PWD/../packages64bit/lib/ -lboost_thread-vc140-mt
PRE_TARGETDEPS += $$PWD/../packages64bit/lib//boost_thread-vc140-mt.lib
LIBS += -L$$PWD/../packages64bit/lib/ -lzlib
PRE_TARGETDEPS += $$PWD/../packages64bit/lib/zlib.lib
LIBS += -L$$PWD/../packages64bit/lib/ -llibcryptoMD
PRE_TARGETDEPS += $$PWD/../packages64bit/lib/libcryptoMD.lib
LIBS += -L$$PWD/../packages64bit/lib/ -llibsslMT
PRE_TARGETDEPS += $$PWD/../packages64bit/lib/libsslMT.lib
LIBS += -L$$PWD/../packages64bit/lib/ -levent
PRE_TARGETDEPS += $$PWD/../packages64bit/lib/event.lib
LIBS += -L$$PWD/../packages64bit/lib/ -levent_core
PRE_TARGETDEPS += $$PWD/../packages64bit/lib/event_core.lib
LIBS += -L$$PWD/../packages64bit/lib/ -levent_extra
PRE_TARGETDEPS += $$PWD/../packages64bit/lib/event_extra.lib
LIBS += -L$$PWD/../packages64bit/lib/ -lWS2_32
PRE_TARGETDEPS += $$PWD/../packages64bit/lib/WS2_32.lib
LIBS += -L$$PWD/../packages64bit/lib/ -lAdvAPI32
PRE_TARGETDEPS += $$PWD/../packages64bit/lib/AdvAPI32.lib

TEMPLATE = app
TARGET = tor

QMAKE_CXXFLAGS += /MD
QMAKE_CXXFLAGS += /NODEFAULTLIB
QMAKE_CXXFLAGS += /MT
QMAKE_CXXFLAGS += -std=c++14

#find . -type d
INCLUDEPATH += . ./.vs ./.vs/tor ./.vs/tor/v15 ./.vs/tor/v15/ipch ./.vs/tor/v15/ipch/AutoPCH ./autom4te.cache ./changes ./contrib ./contrib/clang ./contrib/client-tools ./contrib/dirauth-tools ./contrib/dist ./contrib/dist/suse ./contrib/operator-tools ./contrib/or-tools ./contrib/win32build ./doc ./doc/contrib ./doc/HACKING ./m4 ./scripts ./scripts/coccinelle ./scripts/codegen ./scripts/maint ./scripts/test ./src ./src/adapter ./src/common ./src/common/.deps ./src/config ./src/ext ./src/ext/.deps ./src/ext/curve25519_donna ./src/ext/curve25519_donna/.deps ./src/ext/ed25519 ./src/ext/ed25519/donna ./src/ext/ed25519/donna/.deps ./src/ext/ed25519/donna/fuzz ./src/ext/ed25519/ref10 ./src/ext/ed25519/ref10/.deps ./src/ext/keccak-tiny ./src/ext/keccak-tiny/.deps ./src/ext/mulodi ./src/ext/mulodi/.deps ./src/ext/rust ./src/ext/timeouts ./src/ext/timeouts/.deps ./src/ext/timeouts/bench ./src/ext/timeouts/lua ./src/ext/trunnel ./src/ext/trunnel/.deps ./src/or ./src/or/.deps ./src/rust ./src/rust/.cargo ./src/rust/tor_util ./src/rust/tor_util/tests ./src/test ./src/test/fuzz ./src/test/fuzz/dict ./src/tools ./src/tools/tor-fw-helper ./src/trace ./src/trunnel ./src/trunnel/.deps ./src/trunnel/hs ./src/trunnel/hs/.deps

HEADERS += \
    src/ext/keccak-tiny/keccak-tiny.h

SOURCES += \
    src/ext/keccak-tiny/keccak-tiny.c
