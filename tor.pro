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
PRE_TARGETDEPS += $$PWD/../packages64bit/lib/boost_program_options-vc140-mt.lib
LIBS += -L$$PWD/../packages64bit/lib/ -lboost_system-vc140-mt
PRE_TARGETDEPS += $$PWD/../packages64bit/lib/boost_system-vc140-mt.lib
LIBS += -L$$PWD/../packages64bit/lib/ -lboost_thread-vc140-mt
PRE_TARGETDEPS += $$PWD/../packages64bit/lib/boost_thread-vc140-mt.lib
LIBS += -L$$PWD/../packages64bit/lib/ -lzlib
PRE_TARGETDEPS += $$PWD/../packages64bit/lib/zlib.lib
LIBS += -L$$PWD/../packages64bit/lib/ -llibcryptoMT
PRE_TARGETDEPS += $$PWD/../packages64bit/lib/libcryptoMT.lib
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
LIBS += -L$$PWD/../packages64bit/lib/ -lshell32
PRE_TARGETDEPS += $$PWD/../packages64bit/lib/shell32.lib
LIBS += -L$$PWD/../packages64bit/lib/ -lUser32
PRE_TARGETDEPS += $$PWD/../packages64bit/lib/User32.lib

TEMPLATE = lib
TARGET = torlib
CONFIG += static

DESTDIR = $$PWD

QMAKE_CXXFLAGS += /MD
QMAKE_CXXFLAGS += /MT
QMAKE_CXXFLAGS += -std=c++14

#find . -type d
INCLUDEPATH += $$PWD/. $$PWD/.vs $$PWD/.vs/tor $$PWD/.vs/tor/v15 $$PWD/.vs/tor/v15/ipch $$PWD/.vs/tor/v15/ipch/AutoPCH $$PWD/autom4te.cache $$PWD/changes $$PWD/contrib $$PWD/contrib/clang $$PWD/contrib/client-tools $$PWD/contrib/dirauth-tools $$PWD/contrib/dist $$PWD/contrib/dist/suse $$PWD/contrib/operator-tools $$PWD/contrib/or-tools $$PWD/contrib/win32build $$PWD/doc $$PWD/doc/contrib $$PWD/doc/HACKING $$PWD/m4 $$PWD/scripts $$PWD/scripts/coccinelle $$PWD/scripts/codegen $$PWD/scripts/maint $$PWD/scripts/test $$PWD/src $$PWD/src/adapter $$PWD/src/common $$PWD/src/common/.deps $$PWD/src/config $$PWD/src/ext $$PWD/src/ext/.deps $$PWD/src/ext/curve25519_donna $$PWD/src/ext/curve25519_donna/.deps $$PWD/src/ext/ed25519 $$PWD/src/ext/ed25519/donna $$PWD/src/ext/ed25519/donna/.deps $$PWD/src/ext/ed25519/donna/fuzz $$PWD/src/ext/ed25519/ref10 $$PWD/src/ext/ed25519/ref10/.deps $$PWD/src/ext/keccak-tiny $$PWD/src/ext/keccak-tiny/.deps $$PWD/src/ext/mulodi $$PWD/src/ext/mulodi/.deps $$PWD/src/ext/rust $$PWD/src/ext/timeouts $$PWD/src/ext/timeouts/.deps $$PWD/src/ext/timeouts/bench $$PWD/src/ext/timeouts/lua $$PWD/src/ext/trunnel $$PWD/src/ext/trunnel/.deps $$PWD/src/or $$PWD/src/or/.deps $$PWD/src/rust $$PWD/src/rust/.cargo $$PWD/src/rust/tor_util $$PWD/src/rust/tor_util/tests $$PWD/src/test $$PWD/src/test/fuzz $$PWD/src/test/fuzz/dict $$PWD/src/tools $$PWD/src/tools/tor-fw-helper $$PWD/src/trace $$PWD/src/trunnel $$PWD/src/trunnel/.deps $$PWD/src/trunnel/hs $$PWD/src/trunnel/hs/.deps

HEADERS += \
    $$PWD/src/ext/ed25519/donna/fuzz/curve25519-ref10.h \
#    $$PWD/src/ext/ed25519/donna/fuzz/ed25519-donna.h \
    $$PWD/src/ext/ed25519/donna/fuzz/ed25519-ref10.h \
    $$PWD/src/ext/ed25519/donna/curve25519-donna-32bit.h \
    $$PWD/src/ext/ed25519/donna/curve25519-donna-64bit.h \
    $$PWD/src/ext/ed25519/donna/curve25519-donna-helpers.h \
    $$PWD/src/ext/ed25519/donna/curve25519-donna-sse2.h \
    $$PWD/src/ext/ed25519/donna/ed25519-donna-32bit-sse2.h \
    $$PWD/src/ext/ed25519/donna/ed25519-donna-32bit-tables.h \
    $$PWD/src/ext/ed25519/donna/ed25519-donna-64bit-sse2.h \
    $$PWD/src/ext/ed25519/donna/ed25519-donna-64bit-tables.h \
    $$PWD/src/ext/ed25519/donna/ed25519-donna-64bit-x86-32bit.h \
    $$PWD/src/ext/ed25519/donna/ed25519-donna-64bit-x86.h \
    $$PWD/src/ext/ed25519/donna/ed25519-donna-basepoint-table.h \
    $$PWD/src/ext/ed25519/donna/ed25519-donna-batchverify.h \
    $$PWD/src/ext/ed25519/donna/ed25519-donna-impl-base.h \
    $$PWD/src/ext/ed25519/donna/ed25519-donna-impl-sse2.h \
    $$PWD/src/ext/ed25519/donna/ed25519-donna-portable-identify.h \
    $$PWD/src/ext/ed25519/donna/ed25519-donna-portable.h \
    $$PWD/src/ext/ed25519/donna/ed25519-donna.h \
    $$PWD/src/ext/ed25519/donna/ed25519-hash-custom.h \
    $$PWD/src/ext/ed25519/donna/ed25519-hash.h \
    $$PWD/src/ext/ed25519/donna/ed25519-randombytes-custom.h \
    $$PWD/src/ext/ed25519/donna/ed25519-randombytes.h \
#    $$PWD/src/ext/ed25519/donna/ed25519.h \
    $$PWD/src/ext/ed25519/donna/ed25519_donna_tor.h \
    $$PWD/src/ext/ed25519/donna/modm-donna-32bit.h \
    $$PWD/src/ext/ed25519/donna/modm-donna-64bit.h \
    $$PWD/src/ext/ed25519/donna/regression.h \
    $$PWD/src/ext/ed25519/donna/test-ticks.h \
    $$PWD/src/ext/ed25519/ref10/api.h \
    $$PWD/src/ext/ed25519/ref10/base.h \
    $$PWD/src/ext/ed25519/ref10/base2.h \
    $$PWD/src/ext/ed25519/ref10/crypto_hash_sha512.h \
    $$PWD/src/ext/ed25519/ref10/crypto_int32.h \
    $$PWD/src/ext/ed25519/ref10/crypto_int64.h \
    $$PWD/src/ext/ed25519/ref10/crypto_sign.h \
    $$PWD/src/ext/ed25519/ref10/crypto_uint32.h \
    $$PWD/src/ext/ed25519/ref10/crypto_uint64.h \
    $$PWD/src/ext/ed25519/ref10/crypto_verify_32.h \
    $$PWD/src/ext/ed25519/ref10/d.h \
    $$PWD/src/ext/ed25519/ref10/d2.h \
    $$PWD/src/ext/ed25519/ref10/ed25519_ref10.h \
    $$PWD/src/ext/ed25519/ref10/fe.h \
    $$PWD/src/ext/ed25519/ref10/ge.h \
    $$PWD/src/ext/ed25519/ref10/ge_add.h \
    $$PWD/src/ext/ed25519/ref10/ge_madd.h \
    $$PWD/src/ext/ed25519/ref10/ge_msub.h \
    $$PWD/src/ext/ed25519/ref10/ge_p2_dbl.h \
    $$PWD/src/ext/ed25519/ref10/ge_sub.h \
    $$PWD/src/ext/ed25519/ref10/pow22523.h \
    $$PWD/src/ext/ed25519/ref10/pow225521.h \
    $$PWD/src/ext/ed25519/ref10/randombytes.h \
    $$PWD/src/ext/ed25519/ref10/sc.h \
    $$PWD/src/ext/ed25519/ref10/sqrtm1.h \
    $$PWD/src/ext/keccak-tiny/keccak-tiny.h \
    $$PWD/src/ext/timeouts/bench/bench.h \
    $$PWD/src/ext/timeouts/timeout-debug.h \
    $$PWD/src/ext/timeouts/timeout.h \
    $$PWD/src/ext/trunnel/trunnel-impl.h \
    $$PWD/src/ext/trunnel/trunnel.h \
    $$PWD/src/ext/byteorder.h \
    $$PWD/src/ext/ht.h \
    $$PWD/src/ext/siphash.h \
    $$PWD/src/ext/tinytest.h \
    $$PWD/src/ext/tinytest_macros.h \
    $$PWD/src/ext/tor_queue.h \
    $$PWD/src/ext/tor_readpassphrase.h \
    $$PWD/src/adapter/orconfig.h \
    $$PWD/src/adapter/orconfig_apple.h \
    $$PWD/src/adapter/orconfig_linux.h \
    $$PWD/src/adapter/orconfig_win32.h \
    $$PWD/src/common/address.h \
    $$PWD/src/common/aes.h \
    $$PWD/src/common/backtrace.h \
    $$PWD/src/common/buffers.h \
    $$PWD/src/common/buffers_tls.h \
    $$PWD/src/common/compat.h \
    $$PWD/src/common/compat_libevent.h \
    $$PWD/src/common/compat_openssl.h \
    $$PWD/src/common/compat_rust.h \
    $$PWD/src/common/compat_threads.h \
    $$PWD/src/common/compat_time.h \
    $$PWD/src/common/compress.h \
    $$PWD/src/common/compress_lzma.h \
    $$PWD/src/common/compress_none.h \
    $$PWD/src/common/compress_zlib.h \
    $$PWD/src/common/compress_zstd.h \
    $$PWD/src/common/confline.h \
    $$PWD/src/common/container.h \
    $$PWD/src/common/crypto.h \
    $$PWD/src/common/crypto_curve25519.h \
    $$PWD/src/common/crypto_ed25519.h \
    $$PWD/src/common/crypto_format.h \
    $$PWD/src/common/crypto_pwbox.h \
    $$PWD/src/common/crypto_s2k.h \
    $$PWD/src/common/di_ops.h \
    $$PWD/src/common/handles.h \
    $$PWD/src/common/memarea.h \
    $$PWD/src/common/procmon.h \
    $$PWD/src/common/pubsub.h \
    $$PWD/src/common/sandbox.h \
    $$PWD/src/common/storagedir.h \
    $$PWD/src/common/testsupport.h \
    $$PWD/src/common/timers.h \
    $$PWD/src/common/torint.h \
    $$PWD/src/common/torlog.h \
    $$PWD/src/common/tortls.h \
    $$PWD/src/common/util.h \
    $$PWD/src/common/util_bug.h \
    $$PWD/src/common/util_format.h \
    $$PWD/src/common/util_process.h \
    $$PWD/src/common/workqueue.h \
    $$PWD/src/or/addressmap.h \
    $$PWD/src/or/bridges.h \
    $$PWD/src/or/channel.h \
    $$PWD/src/or/channelpadding.h \
    $$PWD/src/or/channeltls.h \
    $$PWD/src/or/circpathbias.h \
    $$PWD/src/or/circuitbuild.h \
    $$PWD/src/or/circuitlist.h \
    $$PWD/src/or/circuitmux.h \
    $$PWD/src/or/circuitmux_ewma.h \
    $$PWD/src/or/circuitstats.h \
    $$PWD/src/or/circuituse.h \
    $$PWD/src/or/command.h \
    $$PWD/src/or/config.h \
    $$PWD/src/or/confparse.h \
    $$PWD/src/or/connection.h \
    $$PWD/src/or/connection_edge.h \
    $$PWD/src/or/connection_or.h \
    $$PWD/src/or/conscache.h \
    $$PWD/src/or/consdiff.h \
    $$PWD/src/or/consdiffmgr.h \
    $$PWD/src/or/control.h \
    $$PWD/src/or/cpuworker.h \
    $$PWD/src/or/dircollate.h \
    $$PWD/src/or/directory.h \
    $$PWD/src/or/dirserv.h \
    $$PWD/src/or/dirvote.h \
    $$PWD/src/or/dns.h \
    $$PWD/src/or/dns_structs.h \
    $$PWD/src/or/dnsserv.h \
    $$PWD/src/or/entrynodes.h \
    $$PWD/src/or/ext_orport.h \
    $$PWD/src/or/fp_pair.h \
    $$PWD/src/or/geoip.h \
    $$PWD/src/or/hibernate.h \
    $$PWD/src/or/hs_cache.h \
    $$PWD/src/or/hs_cell.h \
    $$PWD/src/or/hs_circuit.h \
    $$PWD/src/or/hs_circuitmap.h \
    $$PWD/src/or/hs_client.h \
    $$PWD/src/or/hs_common.h \
    $$PWD/src/or/hs_config.h \
    $$PWD/src/or/hs_descriptor.h \
    $$PWD/src/or/hs_ident.h \
    $$PWD/src/or/hs_intropoint.h \
    $$PWD/src/or/hs_ntor.h \
    $$PWD/src/or/hs_service.h \
    $$PWD/src/or/keypin.h \
    $$PWD/src/or/main.h \
    $$PWD/src/or/microdesc.h \
    $$PWD/src/or/networkstatus.h \
    $$PWD/src/or/nodelist.h \
    $$PWD/src/or/ntmain.h \
    $$PWD/src/or/onion.h \
    $$PWD/src/or/onion_fast.h \
    $$PWD/src/or/onion_ntor.h \
    $$PWD/src/or/onion_tap.h \
    $$PWD/src/or/or.h \
    $$PWD/src/or/parsecommon.h \
    $$PWD/src/or/periodic.h \
    $$PWD/src/or/policies.h \
    $$PWD/src/or/proto_cell.h \
    $$PWD/src/or/proto_control0.h \
    $$PWD/src/or/proto_ext_or.h \
    $$PWD/src/or/proto_http.h \
    $$PWD/src/or/proto_socks.h \
    $$PWD/src/or/protover.h \
    $$PWD/src/or/reasons.h \
    $$PWD/src/or/relay.h \
    $$PWD/src/or/rendcache.h \
    $$PWD/src/or/rendclient.h \
    $$PWD/src/or/rendcommon.h \
    $$PWD/src/or/rendmid.h \
    $$PWD/src/or/rendservice.h \
    $$PWD/src/or/rephist.h \
    $$PWD/src/or/replaycache.h \
    $$PWD/src/or/router.h \
    $$PWD/src/or/routerkeys.h \
    $$PWD/src/or/routerlist.h \
    $$PWD/src/or/routerparse.h \
    $$PWD/src/or/routerset.h \
    $$PWD/src/or/scheduler.h \
    $$PWD/src/or/shared_random.h \
    $$PWD/src/or/shared_random_state.h \
    $$PWD/src/or/statefile.h \
    $$PWD/src/or/status.h \
    $$PWD/src/or/torcert.h \
    $$PWD/src/or/transports.h \
#    $$PWD/src/test/fuzz/fuzzing.h \
#    $$PWD/src/test/fakechans.h \
#    $$PWD/src/test/hs_test_helpers.h \
#    $$PWD/src/test/log_test_helpers.h \
#    $$PWD/src/test/rend_test_helpers.h \
#    $$PWD/src/test/test.h \
#    $$PWD/src/test/test_connection.h \
#    $$PWD/src/test/test_dir_common.h \
#    $$PWD/src/test/test_helpers.h \
    $$PWD/src/trace/debug.h \
    $$PWD/src/trace/events.h \
    $$PWD/src/trace/trace.h \
    $$PWD/src/trunnel/hs/cell_common.h \
    $$PWD/src/trunnel/hs/cell_establish_intro.h \
    $$PWD/src/trunnel/hs/cell_introduce1.h \
    $$PWD/src/trunnel/hs/cell_rendezvous.h \
    $$PWD/src/trunnel/channelpadding_negotiation.h \
    $$PWD/src/trunnel/ed25519_cert.h \
    $$PWD/src/trunnel/link_handshake.h \
    $$PWD/src/trunnel/pwbox.h \
    $$PWD/src/trunnel/trunnel-local.h

SOURCES += \
#    $$PWD/src/ext/timeouts/bench/bench-heap.c \
#    $$PWD/src/ext/timeouts/bench/bench-llrb.c \
    $$PWD/src/ext/timeouts/bench/bench-wheel.c \
    $$PWD/src/ext/timeouts/bench/bench.c \
    $$PWD/src/ext/timeouts/lua/timeout-lua.c \
#    $$PWD/src/ext/timeouts/test-timeout.c \
    $$PWD/src/ext/timeouts/timeout-bitops.c \
    $$PWD/src/ext/timeouts/timeout.c \
    $$PWD/src/ext/trunnel/trunnel.c \
    $$PWD/src/ext/csiphash.c \
#    $$PWD/src/ext/OpenBSD_malloc_Linux.c \
#    $$PWD/src/ext/readpassphrase.c \
    $$PWD/src/ext/strlcat.c \
    $$PWD/src/ext/strlcpy.c \
    $$PWD/src/ext/tinytest.c \
#    $$PWD/src/ext/tinytest_demo.c \
    $$PWD/src/ext/curve25519_donna/curve25519-donna-c64.c \
#    $$PWD/src/ext/curve25519_donna/curve25519-donna.c \
    $$PWD/src/ext/ed25519/donna/fuzz/curve25519-ref10.c \
    $$PWD/src/ext/ed25519/donna/fuzz/ed25519-donna-sse2.c \
#    $$PWD/src/ext/ed25519/donna/fuzz/ed25519-donna.c \
    $$PWD/src/ext/ed25519/donna/fuzz/ed25519-ref10.c \
#    $$PWD/src/ext/ed25519/donna/fuzz/fuzz-curve25519.c \
#    $$PWD/src/ext/ed25519/donna/fuzz/fuzz-ed25519.c \
#    $$PWD/src/ext/ed25519/donna/ed25519.c \
    $$PWD/src/ext/ed25519/donna/ed25519_tor.c \
    $$PWD/src/ext/ed25519/donna/test-internals.c \
#    $$PWD/src/ext/ed25519/donna/test.c \
    $$PWD/src/ext/ed25519/ref10/blinding.c \
    $$PWD/src/ext/ed25519/ref10/fe_0.c \
    $$PWD/src/ext/ed25519/ref10/fe_1.c \
    $$PWD/src/ext/ed25519/ref10/fe_add.c \
    $$PWD/src/ext/ed25519/ref10/fe_cmov.c \
    $$PWD/src/ext/ed25519/ref10/fe_copy.c \
    $$PWD/src/ext/ed25519/ref10/fe_frombytes.c \
    $$PWD/src/ext/ed25519/ref10/fe_invert.c \
    $$PWD/src/ext/ed25519/ref10/fe_isnegative.c \
    $$PWD/src/ext/ed25519/ref10/fe_isnonzero.c \
    $$PWD/src/ext/ed25519/ref10/fe_mul.c \
    $$PWD/src/ext/ed25519/ref10/fe_neg.c \
    $$PWD/src/ext/ed25519/ref10/fe_pow22523.c \
    $$PWD/src/ext/ed25519/ref10/fe_sq.c \
    $$PWD/src/ext/ed25519/ref10/fe_sq2.c \
    $$PWD/src/ext/ed25519/ref10/fe_sub.c \
    $$PWD/src/ext/ed25519/ref10/fe_tobytes.c \
    $$PWD/src/ext/ed25519/ref10/ge_add.c \
    $$PWD/src/ext/ed25519/ref10/ge_double_scalarmult.c \
    $$PWD/src/ext/ed25519/ref10/ge_frombytes.c \
    $$PWD/src/ext/ed25519/ref10/ge_madd.c \
    $$PWD/src/ext/ed25519/ref10/ge_msub.c \
    $$PWD/src/ext/ed25519/ref10/ge_p1p1_to_p2.c \
    $$PWD/src/ext/ed25519/ref10/ge_p1p1_to_p3.c \
    $$PWD/src/ext/ed25519/ref10/ge_p2_0.c \
    $$PWD/src/ext/ed25519/ref10/ge_p2_dbl.c \
    $$PWD/src/ext/ed25519/ref10/ge_p3_0.c \
    $$PWD/src/ext/ed25519/ref10/ge_p3_dbl.c \
    $$PWD/src/ext/ed25519/ref10/ge_p3_to_cached.c \
    $$PWD/src/ext/ed25519/ref10/ge_p3_to_p2.c \
    $$PWD/src/ext/ed25519/ref10/ge_p3_tobytes.c \
    $$PWD/src/ext/ed25519/ref10/ge_precomp_0.c \
    $$PWD/src/ext/ed25519/ref10/ge_scalarmult_base.c \
    $$PWD/src/ext/ed25519/ref10/ge_sub.c \
    $$PWD/src/ext/ed25519/ref10/ge_tobytes.c \
    $$PWD/src/ext/ed25519/ref10/keyconv.c \
    $$PWD/src/ext/ed25519/ref10/keypair.c \
    $$PWD/src/ext/ed25519/ref10/open.c \
    $$PWD/src/ext/ed25519/ref10/sc_muladd.c \
    $$PWD/src/ext/ed25519/ref10/sc_reduce.c \
    $$PWD/src/ext/ed25519/ref10/sign.c \
    $$PWD/src/ext/keccak-tiny/keccak-tiny-unrolled.c \
#    $$PWD/src/ext/keccak-tiny/keccak-tiny.c \
    $$PWD/src/ext/mulodi/mulodi4.c \
    $$PWD/src/common/address.c \
    $$PWD/src/common/aes.c \
    $$PWD/src/common/backtrace.c \
    $$PWD/src/common/buffers.c \
    $$PWD/src/common/buffers_tls.c \
    $$PWD/src/common/compat.c \
    $$PWD/src/common/compat_libevent.c \
    $$PWD/src/common/compat_rust.c \
    $$PWD/src/common/compat_threads.c \
    $$PWD/src/common/compat_time.c \
    $$PWD/src/common/compat_winthreads.c \
    $$PWD/src/common/compress.c \
    $$PWD/src/common/compress_lzma.c \
    $$PWD/src/common/compress_none.c \
    $$PWD/src/common/compress_zlib.c \
    $$PWD/src/common/compress_zstd.c \
    $$PWD/src/common/confline.c \
    $$PWD/src/common/container.c \
    $$PWD/src/common/crypto_curve25519.c \
    $$PWD/src/common/crypto_ed25519.c \
    $$PWD/src/common/crypto_format.c \
    $$PWD/src/common/crypto_pwbox.c \
    $$PWD/src/common/crypto_s2k.c \
    $$PWD/src/common/di_ops.c \
    $$PWD/src/common/log.c \
    $$PWD/src/common/memarea.c \
    $$PWD/src/common/procmon.c \
    $$PWD/src/common/pubsub.c \
    $$PWD/src/common/sandbox.c \
    $$PWD/src/common/storagedir.c \
    $$PWD/src/common/timers.c \
    $$PWD/src/common/tortls.c \
    $$PWD/src/common/util.c \
    $$PWD/src/common/util_bug.c \
    $$PWD/src/common/util_format.c \
    $$PWD/src/common/util_process.c \
    $$PWD/src/common/workqueue.c \
    $$PWD/src/common/crypto.c \
    $$PWD/src/or/addressmap.c \
    $$PWD/src/or/bridges.c \
    $$PWD/src/or/channel.c \
    $$PWD/src/or/channelpadding.c \
    $$PWD/src/or/channeltls.c \
    $$PWD/src/or/circpathbias.c \
    $$PWD/src/or/circuitbuild.c \
    $$PWD/src/or/circuitlist.c \
    $$PWD/src/or/circuitmux.c \
    $$PWD/src/or/circuitmux_ewma.c \
    $$PWD/src/or/circuitstats.c \
    $$PWD/src/or/circuituse.c \
    $$PWD/src/or/command.c \
    $$PWD/src/or/config.c \
    $$PWD/src/or/confparse.c \
    $$PWD/src/or/connection.c \
    $$PWD/src/or/connection_edge.c \
    $$PWD/src/or/connection_or.c \
    $$PWD/src/or/conscache.c \
    $$PWD/src/or/consdiff.c \
    $$PWD/src/or/consdiffmgr.c \
    $$PWD/src/or/control.c \
    $$PWD/src/or/cpuworker.c \
    $$PWD/src/or/dircollate.c \
    $$PWD/src/or/directory.c \
    $$PWD/src/or/dirserv.c \
    $$PWD/src/or/dirvote.c \
    $$PWD/src/or/dns.c \
    $$PWD/src/or/dnsserv.c \
    $$PWD/src/or/entrynodes.c \
    $$PWD/src/or/ext_orport.c \
    $$PWD/src/or/fp_pair.c \
    $$PWD/src/or/geoip.c \
    $$PWD/src/or/hibernate.c \
    $$PWD/src/or/hs_cache.c \
    $$PWD/src/or/hs_cell.c \
    $$PWD/src/or/hs_circuit.c \
    $$PWD/src/or/hs_circuitmap.c \
    $$PWD/src/or/hs_client.c \
    $$PWD/src/or/hs_common.c \
    $$PWD/src/or/hs_config.c \
    $$PWD/src/or/hs_descriptor.c \
    $$PWD/src/or/hs_ident.c \
    $$PWD/src/or/hs_intropoint.c \
    $$PWD/src/or/hs_ntor.c \
    $$PWD/src/or/hs_service.c \
    $$PWD/src/or/keypin.c \
    $$PWD/src/or/main.c \
    $$PWD/src/or/microdesc.c \
    $$PWD/src/or/networkstatus.c \
    $$PWD/src/or/nodelist.c \
    $$PWD/src/or/ntmain.c \
    $$PWD/src/or/onion.c \
    $$PWD/src/or/onion_fast.c \
    $$PWD/src/or/onion_ntor.c \
    $$PWD/src/or/onion_tap.c \
    $$PWD/src/or/parsecommon.c \
    $$PWD/src/or/periodic.c \
    $$PWD/src/or/policies.c \
    $$PWD/src/or/proto_cell.c \
    $$PWD/src/or/proto_control0.c \
    $$PWD/src/or/proto_ext_or.c \
    $$PWD/src/or/proto_http.c \
    $$PWD/src/or/proto_socks.c \
    $$PWD/src/or/protover.c \
    $$PWD/src/or/reasons.c \
    $$PWD/src/or/relay.c \
    $$PWD/src/or/rendcache.c \
    $$PWD/src/or/rendclient.c \
    $$PWD/src/or/rendcommon.c \
    $$PWD/src/or/rendmid.c \
    $$PWD/src/or/rendservice.c \
    $$PWD/src/or/rephist.c \
    $$PWD/src/or/replaycache.c \
    $$PWD/src/or/router.c \
    $$PWD/src/or/routerkeys.c \
    $$PWD/src/or/routerlist.c \
    $$PWD/src/or/routerparse.c \
    $$PWD/src/or/routerset.c \
    $$PWD/src/or/scheduler.c \
    $$PWD/src/or/scheduler_kist.c \
    $$PWD/src/or/scheduler_vanilla.c \
    $$PWD/src/or/shared_random.c \
    $$PWD/src/or/shared_random_state.c \
    $$PWD/src/or/statefile.c \
    $$PWD/src/or/status.c \
    $$PWD/src/or/tor_main.c \
    $$PWD/src/or/torcert.c \
    $$PWD/src/or/transports.c \
#    $$PWD/src/test/fuzz/fuzz_consensus.c \
#    $$PWD/src/test/fuzz/fuzz_descriptor.c \
#    $$PWD/src/test/fuzz/fuzz_diff.c \
#    $$PWD/src/test/fuzz/fuzz_diff_apply.c \
#    $$PWD/src/test/fuzz/fuzz_extrainfo.c \
#    $$PWD/src/test/fuzz/fuzz_hsdescv2.c \
#    $$PWD/src/test/fuzz/fuzz_hsdescv3.c \
#    $$PWD/src/test/fuzz/fuzz_http.c \
#    $$PWD/src/test/fuzz/fuzz_http_connect.c \
#    $$PWD/src/test/fuzz/fuzz_iptsv2.c \
#    $$PWD/src/test/fuzz/fuzz_microdesc.c \
#    $$PWD/src/test/fuzz/fuzz_vrs.c \
#    $$PWD/src/test/fuzz/fuzzing_common.c \
#    $$PWD/src/test/bench.c \
#    $$PWD/src/test/hs_test_helpers.c \
#    $$PWD/src/test/log_test_helpers.c \
#    $$PWD/src/test/rend_test_helpers.c \
#    $$PWD/src/test/test-child.c \
#    $$PWD/src/test/test-memwipe.c \
#    $$PWD/src/test/test-timers.c \
#    $$PWD/src/test/test.c \
#    $$PWD/src/test/test_accounting.c \
#    $$PWD/src/test/test_addr.c \
#    $$PWD/src/test/test_address.c \
#    $$PWD/src/test/test_bt_cl.c \
#    $$PWD/src/test/test_buffers.c \
#    $$PWD/src/test/test_cell_formats.c \
#    $$PWD/src/test/test_cell_queue.c \
#    $$PWD/src/test/test_channel.c \
#    $$PWD/src/test/test_channelpadding.c \
#    $$PWD/src/test/test_channeltls.c \
#    $$PWD/src/test/test_checkdir.c \
#    $$PWD/src/test/test_circuitbuild.c \
#    $$PWD/src/test/test_circuitlist.c \
#    $$PWD/src/test/test_circuitmux.c \
#    $$PWD/src/test/test_circuituse.c \
#    $$PWD/src/test/test_compat_libevent.c \
#    $$PWD/src/test/test_config.c \
#    $$PWD/src/test/test_connection.c \
#    $$PWD/src/test/test_conscache.c \
#    $$PWD/src/test/test_consdiff.c \
#    $$PWD/src/test/test_consdiffmgr.c \
#    $$PWD/src/test/test_containers.c \
#    $$PWD/src/test/test_controller.c \
#    $$PWD/src/test/test_controller_events.c \
#    $$PWD/src/test/test_crypto.c \
#    $$PWD/src/test/test_crypto_openssl.c \
#    $$PWD/src/test/test_crypto_slow.c \
#    $$PWD/src/test/test_data.c \
#    $$PWD/src/test/test_dir.c \
#    $$PWD/src/test/test_dir_common.c \
#    $$PWD/src/test/test_dir_handle_get.c \
#    $$PWD/src/test/test_dns.c \
#    $$PWD/src/test/test_entryconn.c \
#    $$PWD/src/test/test_entrynodes.c \
#    $$PWD/src/test/test_extorport.c \
#    $$PWD/src/test/test_guardfraction.c \
#    $$PWD/src/test/test_handles.c \
#    $$PWD/src/test/test_helpers.c \
#    $$PWD/src/test/test_hs.c \
#    $$PWD/src/test/test_hs_cache.c \
#    $$PWD/src/test/test_hs_cell.c \
#    $$PWD/src/test/test_hs_client.c \
#    $$PWD/src/test/test_hs_common.c \
#    $$PWD/src/test/test_hs_config.c \
#    $$PWD/src/test/test_hs_descriptor.c \
#    $$PWD/src/test/test_hs_intropoint.c \
#    $$PWD/src/test/test_hs_ntor.c \
#    $$PWD/src/test/test_hs_ntor_cl.c \
#    $$PWD/src/test/test_hs_service.c \
#    $$PWD/src/test/test_introduce.c \
#    $$PWD/src/test/test_keypin.c \
#    $$PWD/src/test/test_link_handshake.c \
#    $$PWD/src/test/test_logging.c \
#    $$PWD/src/test/test_microdesc.c \
#    $$PWD/src/test/test_nodelist.c \
#    $$PWD/src/test/test_ntor_cl.c \
#    $$PWD/src/test/test_oom.c \
#    $$PWD/src/test/test_oos.c \
#    $$PWD/src/test/test_options.c \
#    $$PWD/src/test/test_policy.c \
#    $$PWD/src/test/test_procmon.c \
#    $$PWD/src/test/test_proto_http.c \
#    $$PWD/src/test/test_proto_misc.c \
#    $$PWD/src/test/test_protover.c \
#    $$PWD/src/test/test_pt.c \
#    $$PWD/src/test/test_pubsub.c \
#    $$PWD/src/test/test_relay.c \
#    $$PWD/src/test/test_relaycell.c \
#    $$PWD/src/test/test_rendcache.c \
#    $$PWD/src/test/test_replay.c \
#    $$PWD/src/test/test_router.c \
#    $$PWD/src/test/test_routerkeys.c \
#    $$PWD/src/test/test_routerlist.c \
#    $$PWD/src/test/test_routerset.c \
#    $$PWD/src/test/test_rust.c \
#    $$PWD/src/test/test_scheduler.c \
#    $$PWD/src/test/test_shared_random.c \
#    $$PWD/src/test/test_slow.c \
#    $$PWD/src/test/test_socks.c \
#    $$PWD/src/test/test_status.c \
#    $$PWD/src/test/test_storagedir.c \
#    $$PWD/src/test/test_switch_id.c \
#    $$PWD/src/test/test_threads.c \
#    $$PWD/src/test/test_tortls.c \
#    $$PWD/src/test/test_util.c \
#    $$PWD/src/test/test_util_format.c \
#    $$PWD/src/test/test_util_process.c \
#    $$PWD/src/test/test_util_slow.c \
#    $$PWD/src/test/test_workqueue.c \
#    $$PWD/src/test/testing_common.c \
#    $$PWD/src/test/testing_rsakeys.c \
#    $$PWD/src/tools/tor-gencert.c \
#    $$PWD/src/tools/tor-resolve.c \
    $$PWD/src/trace/trace.c \
    $$PWD/src/trunnel/hs/cell_common.c \
    $$PWD/src/trunnel/hs/cell_establish_intro.c \
    $$PWD/src/trunnel/hs/cell_introduce1.c \
    $$PWD/src/trunnel/hs/cell_rendezvous.c \
    $$PWD/src/trunnel/channelpadding_negotiation.c \
    $$PWD/src/trunnel/ed25519_cert.c \
    $$PWD/src/trunnel/link_handshake.c \
    $$PWD/src/trunnel/pwbox.c
