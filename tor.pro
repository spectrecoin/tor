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

QMAKE_CXXFLAGS += /MD
QMAKE_CXXFLAGS += /MT
QMAKE_CXXFLAGS += -std=c++14

#find . -type d
INCLUDEPATH += . ./.vs ./.vs/tor ./.vs/tor/v15 ./.vs/tor/v15/ipch ./.vs/tor/v15/ipch/AutoPCH ./autom4te.cache ./changes ./contrib ./contrib/clang ./contrib/client-tools ./contrib/dirauth-tools ./contrib/dist ./contrib/dist/suse ./contrib/operator-tools ./contrib/or-tools ./contrib/win32build ./doc ./doc/contrib ./doc/HACKING ./m4 ./scripts ./scripts/coccinelle ./scripts/codegen ./scripts/maint ./scripts/test ./src ./src/adapter ./src/common ./src/common/.deps ./src/config ./src/ext ./src/ext/.deps ./src/ext/curve25519_donna ./src/ext/curve25519_donna/.deps ./src/ext/ed25519 ./src/ext/ed25519/donna ./src/ext/ed25519/donna/.deps ./src/ext/ed25519/donna/fuzz ./src/ext/ed25519/ref10 ./src/ext/ed25519/ref10/.deps ./src/ext/keccak-tiny ./src/ext/keccak-tiny/.deps ./src/ext/mulodi ./src/ext/mulodi/.deps ./src/ext/rust ./src/ext/timeouts ./src/ext/timeouts/.deps ./src/ext/timeouts/bench ./src/ext/timeouts/lua ./src/ext/trunnel ./src/ext/trunnel/.deps ./src/or ./src/or/.deps ./src/rust ./src/rust/.cargo ./src/rust/tor_util ./src/rust/tor_util/tests ./src/test ./src/test/fuzz ./src/test/fuzz/dict ./src/tools ./src/tools/tor-fw-helper ./src/trace ./src/trunnel ./src/trunnel/.deps ./src/trunnel/hs ./src/trunnel/hs/.deps

HEADERS += \
    src/ext/ed25519/donna/fuzz/curve25519-ref10.h \
#    src/ext/ed25519/donna/fuzz/ed25519-donna.h \
    src/ext/ed25519/donna/fuzz/ed25519-ref10.h \
    src/ext/ed25519/donna/curve25519-donna-32bit.h \
    src/ext/ed25519/donna/curve25519-donna-64bit.h \
    src/ext/ed25519/donna/curve25519-donna-helpers.h \
    src/ext/ed25519/donna/curve25519-donna-sse2.h \
    src/ext/ed25519/donna/ed25519-donna-32bit-sse2.h \
    src/ext/ed25519/donna/ed25519-donna-32bit-tables.h \
    src/ext/ed25519/donna/ed25519-donna-64bit-sse2.h \
    src/ext/ed25519/donna/ed25519-donna-64bit-tables.h \
    src/ext/ed25519/donna/ed25519-donna-64bit-x86-32bit.h \
    src/ext/ed25519/donna/ed25519-donna-64bit-x86.h \
    src/ext/ed25519/donna/ed25519-donna-basepoint-table.h \
    src/ext/ed25519/donna/ed25519-donna-batchverify.h \
    src/ext/ed25519/donna/ed25519-donna-impl-base.h \
    src/ext/ed25519/donna/ed25519-donna-impl-sse2.h \
    src/ext/ed25519/donna/ed25519-donna-portable-identify.h \
    src/ext/ed25519/donna/ed25519-donna-portable.h \
    src/ext/ed25519/donna/ed25519-donna.h \
    src/ext/ed25519/donna/ed25519-hash-custom.h \
    src/ext/ed25519/donna/ed25519-hash.h \
    src/ext/ed25519/donna/ed25519-randombytes-custom.h \
    src/ext/ed25519/donna/ed25519-randombytes.h \
#    src/ext/ed25519/donna/ed25519.h \
    src/ext/ed25519/donna/ed25519_donna_tor.h \
    src/ext/ed25519/donna/modm-donna-32bit.h \
    src/ext/ed25519/donna/modm-donna-64bit.h \
    src/ext/ed25519/donna/regression.h \
    src/ext/ed25519/donna/test-ticks.h \
    src/ext/ed25519/ref10/api.h \
    src/ext/ed25519/ref10/base.h \
    src/ext/ed25519/ref10/base2.h \
    src/ext/ed25519/ref10/crypto_hash_sha512.h \
    src/ext/ed25519/ref10/crypto_int32.h \
    src/ext/ed25519/ref10/crypto_int64.h \
    src/ext/ed25519/ref10/crypto_sign.h \
    src/ext/ed25519/ref10/crypto_uint32.h \
    src/ext/ed25519/ref10/crypto_uint64.h \
    src/ext/ed25519/ref10/crypto_verify_32.h \
    src/ext/ed25519/ref10/d.h \
    src/ext/ed25519/ref10/d2.h \
    src/ext/ed25519/ref10/ed25519_ref10.h \
    src/ext/ed25519/ref10/fe.h \
    src/ext/ed25519/ref10/ge.h \
    src/ext/ed25519/ref10/ge_add.h \
    src/ext/ed25519/ref10/ge_madd.h \
    src/ext/ed25519/ref10/ge_msub.h \
    src/ext/ed25519/ref10/ge_p2_dbl.h \
    src/ext/ed25519/ref10/ge_sub.h \
    src/ext/ed25519/ref10/pow22523.h \
    src/ext/ed25519/ref10/pow225521.h \
    src/ext/ed25519/ref10/randombytes.h \
    src/ext/ed25519/ref10/sc.h \
    src/ext/ed25519/ref10/sqrtm1.h \
    src/ext/keccak-tiny/keccak-tiny.h \
    src/ext/timeouts/bench/bench.h \
    src/ext/timeouts/timeout-debug.h \
    src/ext/timeouts/timeout.h \
    src/ext/trunnel/trunnel-impl.h \
    src/ext/trunnel/trunnel.h \
    src/ext/byteorder.h \
    src/ext/ht.h \
    src/ext/siphash.h \
    src/ext/tinytest.h \
    src/ext/tinytest_macros.h \
    src/ext/tor_queue.h \
    src/ext/tor_readpassphrase.h \
    src/adapter/orconfig.h \
    src/adapter/orconfig_apple.h \
    src/adapter/orconfig_linux.h \
    src/adapter/orconfig_win32.h \
    src/common/address.h \
    src/common/aes.h \
    src/common/backtrace.h \
    src/common/buffers.h \
    src/common/buffers_tls.h \
    src/common/compat.h \
    src/common/compat_libevent.h \
    src/common/compat_openssl.h \
    src/common/compat_rust.h \
    src/common/compat_threads.h \
    src/common/compat_time.h \
    src/common/compress.h \
    src/common/compress_lzma.h \
    src/common/compress_none.h \
    src/common/compress_zlib.h \
    src/common/compress_zstd.h \
    src/common/confline.h \
    src/common/container.h \
    src/common/crypto.h \
    src/common/crypto_curve25519.h \
    src/common/crypto_ed25519.h \
    src/common/crypto_format.h \
    src/common/crypto_pwbox.h \
    src/common/crypto_s2k.h \
    src/common/di_ops.h \
    src/common/handles.h \
    src/common/memarea.h \
    src/common/procmon.h \
    src/common/pubsub.h \
    src/common/sandbox.h \
    src/common/storagedir.h \
    src/common/testsupport.h \
    src/common/timers.h \
    src/common/torint.h \
    src/common/torlog.h \
    src/common/tortls.h \
    src/common/util.h \
    src/common/util_bug.h \
    src/common/util_format.h \
    src/common/util_process.h \
    src/common/workqueue.h \
    src/or/addressmap.h \
    src/or/bridges.h \
    src/or/channel.h \
    src/or/channelpadding.h \
    src/or/channeltls.h \
    src/or/circpathbias.h \
    src/or/circuitbuild.h \
    src/or/circuitlist.h \
    src/or/circuitmux.h \
    src/or/circuitmux_ewma.h \
    src/or/circuitstats.h \
    src/or/circuituse.h \
    src/or/command.h \
    src/or/config.h \
    src/or/confparse.h \
    src/or/connection.h \
    src/or/connection_edge.h \
    src/or/connection_or.h \
    src/or/conscache.h \
    src/or/consdiff.h \
    src/or/consdiffmgr.h \
    src/or/control.h \
    src/or/cpuworker.h \
    src/or/dircollate.h \
    src/or/directory.h \
    src/or/dirserv.h \
    src/or/dirvote.h \
    src/or/dns.h \
    src/or/dns_structs.h \
    src/or/dnsserv.h \
    src/or/entrynodes.h \
    src/or/ext_orport.h \
    src/or/fp_pair.h \
    src/or/geoip.h \
    src/or/hibernate.h \
    src/or/hs_cache.h \
    src/or/hs_cell.h \
    src/or/hs_circuit.h \
    src/or/hs_circuitmap.h \
    src/or/hs_client.h \
    src/or/hs_common.h \
    src/or/hs_config.h \
    src/or/hs_descriptor.h \
    src/or/hs_ident.h \
    src/or/hs_intropoint.h \
    src/or/hs_ntor.h \
    src/or/hs_service.h \
    src/or/keypin.h \
    src/or/main.h \
    src/or/microdesc.h \
    src/or/networkstatus.h \
    src/or/nodelist.h \
    src/or/ntmain.h \
    src/or/onion.h \
    src/or/onion_fast.h \
    src/or/onion_ntor.h \
    src/or/onion_tap.h \
    src/or/or.h \
    src/or/parsecommon.h \
    src/or/periodic.h \
    src/or/policies.h \
    src/or/proto_cell.h \
    src/or/proto_control0.h \
    src/or/proto_ext_or.h \
    src/or/proto_http.h \
    src/or/proto_socks.h \
    src/or/protover.h \
    src/or/reasons.h \
    src/or/relay.h \
    src/or/rendcache.h \
    src/or/rendclient.h \
    src/or/rendcommon.h \
    src/or/rendmid.h \
    src/or/rendservice.h \
    src/or/rephist.h \
    src/or/replaycache.h \
    src/or/router.h \
    src/or/routerkeys.h \
    src/or/routerlist.h \
    src/or/routerparse.h \
    src/or/routerset.h \
    src/or/scheduler.h \
    src/or/shared_random.h \
    src/or/shared_random_state.h \
    src/or/statefile.h \
    src/or/status.h \
    src/or/torcert.h \
    src/or/transports.h \
#    src/test/fuzz/fuzzing.h \
#    src/test/fakechans.h \
#    src/test/hs_test_helpers.h \
#    src/test/log_test_helpers.h \
#    src/test/rend_test_helpers.h \
#    src/test/test.h \
#    src/test/test_connection.h \
#    src/test/test_dir_common.h \
#    src/test/test_helpers.h \
    src/trace/debug.h \
    src/trace/events.h \
    src/trace/trace.h \
    src/trunnel/hs/cell_common.h \
    src/trunnel/hs/cell_establish_intro.h \
    src/trunnel/hs/cell_introduce1.h \
    src/trunnel/hs/cell_rendezvous.h \
    src/trunnel/channelpadding_negotiation.h \
    src/trunnel/ed25519_cert.h \
    src/trunnel/link_handshake.h \
    src/trunnel/pwbox.h \
    src/trunnel/trunnel-local.h

SOURCES += \
#    src/ext/timeouts/bench/bench-heap.c \
#    src/ext/timeouts/bench/bench-llrb.c \
    src/ext/timeouts/bench/bench-wheel.c \
    src/ext/timeouts/bench/bench.c \
    src/ext/timeouts/lua/timeout-lua.c \
#    src/ext/timeouts/test-timeout.c \
    src/ext/timeouts/timeout-bitops.c \
    src/ext/timeouts/timeout.c \
    src/ext/trunnel/trunnel.c \
    src/ext/csiphash.c \
#    src/ext/OpenBSD_malloc_Linux.c \
#    src/ext/readpassphrase.c \
    src/ext/strlcat.c \
    src/ext/strlcpy.c \
    src/ext/tinytest.c \
#    src/ext/tinytest_demo.c \
    src/ext/curve25519_donna/curve25519-donna-c64.c \
#    src/ext/curve25519_donna/curve25519-donna.c \
    src/ext/ed25519/donna/fuzz/curve25519-ref10.c \
    src/ext/ed25519/donna/fuzz/ed25519-donna-sse2.c \
#    src/ext/ed25519/donna/fuzz/ed25519-donna.c \
    src/ext/ed25519/donna/fuzz/ed25519-ref10.c \
#    src/ext/ed25519/donna/fuzz/fuzz-curve25519.c \
#    src/ext/ed25519/donna/fuzz/fuzz-ed25519.c \
#    src/ext/ed25519/donna/ed25519.c \
    src/ext/ed25519/donna/ed25519_tor.c \
    src/ext/ed25519/donna/test-internals.c \
#    src/ext/ed25519/donna/test.c \
    src/ext/ed25519/ref10/blinding.c \
    src/ext/ed25519/ref10/fe_0.c \
    src/ext/ed25519/ref10/fe_1.c \
    src/ext/ed25519/ref10/fe_add.c \
    src/ext/ed25519/ref10/fe_cmov.c \
    src/ext/ed25519/ref10/fe_copy.c \
    src/ext/ed25519/ref10/fe_frombytes.c \
    src/ext/ed25519/ref10/fe_invert.c \
    src/ext/ed25519/ref10/fe_isnegative.c \
    src/ext/ed25519/ref10/fe_isnonzero.c \
    src/ext/ed25519/ref10/fe_mul.c \
    src/ext/ed25519/ref10/fe_neg.c \
    src/ext/ed25519/ref10/fe_pow22523.c \
    src/ext/ed25519/ref10/fe_sq.c \
    src/ext/ed25519/ref10/fe_sq2.c \
    src/ext/ed25519/ref10/fe_sub.c \
    src/ext/ed25519/ref10/fe_tobytes.c \
    src/ext/ed25519/ref10/ge_add.c \
    src/ext/ed25519/ref10/ge_double_scalarmult.c \
    src/ext/ed25519/ref10/ge_frombytes.c \
    src/ext/ed25519/ref10/ge_madd.c \
    src/ext/ed25519/ref10/ge_msub.c \
    src/ext/ed25519/ref10/ge_p1p1_to_p2.c \
    src/ext/ed25519/ref10/ge_p1p1_to_p3.c \
    src/ext/ed25519/ref10/ge_p2_0.c \
    src/ext/ed25519/ref10/ge_p2_dbl.c \
    src/ext/ed25519/ref10/ge_p3_0.c \
    src/ext/ed25519/ref10/ge_p3_dbl.c \
    src/ext/ed25519/ref10/ge_p3_to_cached.c \
    src/ext/ed25519/ref10/ge_p3_to_p2.c \
    src/ext/ed25519/ref10/ge_p3_tobytes.c \
    src/ext/ed25519/ref10/ge_precomp_0.c \
    src/ext/ed25519/ref10/ge_scalarmult_base.c \
    src/ext/ed25519/ref10/ge_sub.c \
    src/ext/ed25519/ref10/ge_tobytes.c \
    src/ext/ed25519/ref10/keyconv.c \
    src/ext/ed25519/ref10/keypair.c \
    src/ext/ed25519/ref10/open.c \
    src/ext/ed25519/ref10/sc_muladd.c \
    src/ext/ed25519/ref10/sc_reduce.c \
    src/ext/ed25519/ref10/sign.c \
    src/ext/keccak-tiny/keccak-tiny-unrolled.c \
#    src/ext/keccak-tiny/keccak-tiny.c \
    src/ext/mulodi/mulodi4.c \
    src/common/address.c \
    src/common/aes.c \
    src/common/backtrace.c \
    src/common/buffers.c \
    src/common/buffers_tls.c \
    src/common/compat.c \
    src/common/compat_libevent.c \
    src/common/compat_rust.c \
    src/common/compat_threads.c \
    src/common/compat_time.c \
    src/common/compat_winthreads.c \
    src/common/compress.c \
    src/common/compress_lzma.c \
    src/common/compress_none.c \
    src/common/compress_zlib.c \
    src/common/compress_zstd.c \
    src/common/confline.c \
    src/common/container.c \
    src/common/crypto_curve25519.c \
    src/common/crypto_ed25519.c \
    src/common/crypto_format.c \
    src/common/crypto_pwbox.c \
    src/common/crypto_s2k.c \
    src/common/di_ops.c \
    src/common/log.c \
    src/common/memarea.c \
    src/common/procmon.c \
    src/common/pubsub.c \
    src/common/sandbox.c \
    src/common/storagedir.c \
    src/common/timers.c \
    src/common/tortls.c \
    src/common/util.c \
    src/common/util_bug.c \
    src/common/util_format.c \
    src/common/util_process.c \
    src/common/workqueue.c \
    src/common/crypto.c \
    src/or/addressmap.c \
    src/or/bridges.c \
    src/or/channel.c \
    src/or/channelpadding.c \
    src/or/channeltls.c \
    src/or/circpathbias.c \
    src/or/circuitbuild.c \
    src/or/circuitlist.c \
    src/or/circuitmux.c \
    src/or/circuitmux_ewma.c \
    src/or/circuitstats.c \
    src/or/circuituse.c \
    src/or/command.c \
    src/or/config.c \
    src/or/confparse.c \
    src/or/connection.c \
    src/or/connection_edge.c \
    src/or/connection_or.c \
    src/or/conscache.c \
    src/or/consdiff.c \
    src/or/consdiffmgr.c \
    src/or/control.c \
    src/or/cpuworker.c \
    src/or/dircollate.c \
    src/or/directory.c \
    src/or/dirserv.c \
    src/or/dirvote.c \
    src/or/dns.c \
    src/or/dnsserv.c \
    src/or/entrynodes.c \
    src/or/ext_orport.c \
    src/or/fp_pair.c \
    src/or/geoip.c \
    src/or/hibernate.c \
    src/or/hs_cache.c \
    src/or/hs_cell.c \
    src/or/hs_circuit.c \
    src/or/hs_circuitmap.c \
    src/or/hs_client.c \
    src/or/hs_common.c \
    src/or/hs_config.c \
    src/or/hs_descriptor.c \
    src/or/hs_ident.c \
    src/or/hs_intropoint.c \
    src/or/hs_ntor.c \
    src/or/hs_service.c \
    src/or/keypin.c \
    src/or/main.c \
    src/or/microdesc.c \
    src/or/networkstatus.c \
    src/or/nodelist.c \
    src/or/ntmain.c \
    src/or/onion.c \
    src/or/onion_fast.c \
    src/or/onion_ntor.c \
    src/or/onion_tap.c \
    src/or/parsecommon.c \
    src/or/periodic.c \
    src/or/policies.c \
    src/or/proto_cell.c \
    src/or/proto_control0.c \
    src/or/proto_ext_or.c \
    src/or/proto_http.c \
    src/or/proto_socks.c \
    src/or/protover.c \
    src/or/reasons.c \
    src/or/relay.c \
    src/or/rendcache.c \
    src/or/rendclient.c \
    src/or/rendcommon.c \
    src/or/rendmid.c \
    src/or/rendservice.c \
    src/or/rephist.c \
    src/or/replaycache.c \
    src/or/router.c \
    src/or/routerkeys.c \
    src/or/routerlist.c \
    src/or/routerparse.c \
    src/or/routerset.c \
    src/or/scheduler.c \
    src/or/scheduler_kist.c \
    src/or/scheduler_vanilla.c \
    src/or/shared_random.c \
    src/or/shared_random_state.c \
    src/or/statefile.c \
    src/or/status.c \
    src/or/tor_main.c \
    src/or/torcert.c \
    src/or/transports.c \
#    src/test/fuzz/fuzz_consensus.c \
#    src/test/fuzz/fuzz_descriptor.c \
#    src/test/fuzz/fuzz_diff.c \
#    src/test/fuzz/fuzz_diff_apply.c \
#    src/test/fuzz/fuzz_extrainfo.c \
#    src/test/fuzz/fuzz_hsdescv2.c \
#    src/test/fuzz/fuzz_hsdescv3.c \
#    src/test/fuzz/fuzz_http.c \
#    src/test/fuzz/fuzz_http_connect.c \
#    src/test/fuzz/fuzz_iptsv2.c \
#    src/test/fuzz/fuzz_microdesc.c \
#    src/test/fuzz/fuzz_vrs.c \
#    src/test/fuzz/fuzzing_common.c \
#    src/test/bench.c \
#    src/test/hs_test_helpers.c \
#    src/test/log_test_helpers.c \
#    src/test/rend_test_helpers.c \
#    src/test/test-child.c \
#    src/test/test-memwipe.c \
#    src/test/test-timers.c \
#    src/test/test.c \
#    src/test/test_accounting.c \
#    src/test/test_addr.c \
#    src/test/test_address.c \
#    src/test/test_bt_cl.c \
#    src/test/test_buffers.c \
#    src/test/test_cell_formats.c \
#    src/test/test_cell_queue.c \
#    src/test/test_channel.c \
#    src/test/test_channelpadding.c \
#    src/test/test_channeltls.c \
#    src/test/test_checkdir.c \
#    src/test/test_circuitbuild.c \
#    src/test/test_circuitlist.c \
#    src/test/test_circuitmux.c \
#    src/test/test_circuituse.c \
#    src/test/test_compat_libevent.c \
#    src/test/test_config.c \
#    src/test/test_connection.c \
#    src/test/test_conscache.c \
#    src/test/test_consdiff.c \
#    src/test/test_consdiffmgr.c \
#    src/test/test_containers.c \
#    src/test/test_controller.c \
#    src/test/test_controller_events.c \
#    src/test/test_crypto.c \
#    src/test/test_crypto_openssl.c \
#    src/test/test_crypto_slow.c \
#    src/test/test_data.c \
#    src/test/test_dir.c \
#    src/test/test_dir_common.c \
#    src/test/test_dir_handle_get.c \
#    src/test/test_dns.c \
#    src/test/test_entryconn.c \
#    src/test/test_entrynodes.c \
#    src/test/test_extorport.c \
#    src/test/test_guardfraction.c \
#    src/test/test_handles.c \
#    src/test/test_helpers.c \
#    src/test/test_hs.c \
#    src/test/test_hs_cache.c \
#    src/test/test_hs_cell.c \
#    src/test/test_hs_client.c \
#    src/test/test_hs_common.c \
#    src/test/test_hs_config.c \
#    src/test/test_hs_descriptor.c \
#    src/test/test_hs_intropoint.c \
#    src/test/test_hs_ntor.c \
#    src/test/test_hs_ntor_cl.c \
#    src/test/test_hs_service.c \
#    src/test/test_introduce.c \
#    src/test/test_keypin.c \
#    src/test/test_link_handshake.c \
#    src/test/test_logging.c \
#    src/test/test_microdesc.c \
#    src/test/test_nodelist.c \
#    src/test/test_ntor_cl.c \
#    src/test/test_oom.c \
#    src/test/test_oos.c \
#    src/test/test_options.c \
#    src/test/test_policy.c \
#    src/test/test_procmon.c \
#    src/test/test_proto_http.c \
#    src/test/test_proto_misc.c \
#    src/test/test_protover.c \
#    src/test/test_pt.c \
#    src/test/test_pubsub.c \
#    src/test/test_relay.c \
#    src/test/test_relaycell.c \
#    src/test/test_rendcache.c \
#    src/test/test_replay.c \
#    src/test/test_router.c \
#    src/test/test_routerkeys.c \
#    src/test/test_routerlist.c \
#    src/test/test_routerset.c \
#    src/test/test_rust.c \
#    src/test/test_scheduler.c \
#    src/test/test_shared_random.c \
#    src/test/test_slow.c \
#    src/test/test_socks.c \
#    src/test/test_status.c \
#    src/test/test_storagedir.c \
#    src/test/test_switch_id.c \
#    src/test/test_threads.c \
#    src/test/test_tortls.c \
#    src/test/test_util.c \
#    src/test/test_util_format.c \
#    src/test/test_util_process.c \
#    src/test/test_util_slow.c \
#    src/test/test_workqueue.c \
#    src/test/testing_common.c \
#    src/test/testing_rsakeys.c \
#    src/tools/tor-gencert.c \
#    src/tools/tor-resolve.c \
    src/trace/trace.c \
    src/trunnel/hs/cell_common.c \
    src/trunnel/hs/cell_establish_intro.c \
    src/trunnel/hs/cell_introduce1.c \
    src/trunnel/hs/cell_rendezvous.c \
    src/trunnel/channelpadding_negotiation.c \
    src/trunnel/ed25519_cert.c \
    src/trunnel/link_handshake.c \
    src/trunnel/pwbox.c
