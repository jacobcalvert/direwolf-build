# Direwolf Builder
This is a dockerfile/image to build the Direwolf Soundcard TNC from git source. 

# Usage 
To uyse the image, pull and run it. Define the environment variable TAG to select which git branch or tag to checkout before the build. Your current working directory will have two folders when the build is finished, *direwolf* which will contain the source code, and *build* which will contain the CMake contents, source, and build output. The executables will be in *build/src/*

## Note
You'll probably want to chown the resultant files since they will be owned by root. 

## Command and Example
```
jacob@jacob-aspire:/tmp/direwolf$ docker run --rm -v $PWD:/opt/source -e TAG=1.6 direwolf-build:latest 
Building Direwolf from git @ 1.6
Cloning into 'direwolf'...
Note: switching to '1.6'.

You are in 'detached HEAD' state. You can look around, make experimental
changes and commit them, and you can discard any commits you make in this
state without impacting any branches by switching back to a branch.

If you want to create a new branch to retain commits you create, you may
do so (now or later) by using -c with the switch command. Example:

  git switch -c <new-branch-name>

Or undo this operation with:

  git switch -

Turn off this advice by setting config variable advice.detachedHead to false

HEAD is now at 413855e Merge branch 'dev' to master for release 1.6.
-- The C compiler identification is GNU 9.3.0
-- The CXX compiler identification is GNU 9.3.0
-- Check for working C compiler: /usr/bin/cc
-- Check for working C compiler: /usr/bin/cc -- works
-- Detecting C compiler ABI info
-- Detecting C compiler ABI info - done
-- Detecting C compile features
-- Detecting C compile features - done
-- Check for working CXX compiler: /usr/bin/c++
-- Check for working CXX compiler: /usr/bin/c++ -- works
-- Detecting CXX compiler ABI info
-- Detecting CXX compiler ABI info - done
-- Detecting CXX compile features
-- Detecting CXX compile features - done
-- Found Git: /usr/bin/git (found version "2.25.1") 
-- Dire Wolf Version: 1.6.0-413855e
-- Build type set to: Release
CMake system: Linux
-- Target architecture: x86_64
-- Use SSE SIMD instructions
-- Looking for pthread.h
-- Looking for pthread.h - found
-- Performing Test CMAKE_HAVE_LIBC_PTHREAD
-- Performing Test CMAKE_HAVE_LIBC_PTHREAD - Failed
-- Check if compiler accepts -pthread
-- Check if compiler accepts -pthread - yes
-- Found Threads: TRUE  
-- Could NOT find HAMLIB (missing: HAMLIB_LIBRARY HAMLIB_INCLUDE_DIR) 
-- Found ALSA: /usr/lib/x86_64-linux-gnu/libasound.so (found version "1.2.2") 
-- Found UDEV: /usr/lib/x86_64-linux-gnu/libudev.so  
-- Configuring done
-- Generating done
-- Build files have been written to: /opt/source/build
Scanning dependencies of target geotranz
[  0%] Building C object external/geotranz/CMakeFiles/geotranz.dir/error_string.c.o
[  1%] Building C object external/geotranz/CMakeFiles/geotranz.dir/mgrs.c.o
[  1%] Building C object external/geotranz/CMakeFiles/geotranz.dir/polarst.c.o
[  2%] Building C object external/geotranz/CMakeFiles/geotranz.dir/tranmerc.c.o
[  2%] Building C object external/geotranz/CMakeFiles/geotranz.dir/ups.c.o
[  3%] Building C object external/geotranz/CMakeFiles/geotranz.dir/usng.c.o
[  3%] Building C object external/geotranz/CMakeFiles/geotranz.dir/utm.c.o
[  4%] Linking C static library libgeotranz.a
[  4%] Built target geotranz
Scanning dependencies of target misc
[  5%] Building C object external/misc/CMakeFiles/misc.dir/strlcpy.c.o
[  5%] Building C object external/misc/CMakeFiles/misc.dir/strlcat.c.o
[  6%] Linking C static library libmisc.a
[  6%] Built target misc
Scanning dependencies of target appserver
[  6%] Building C object src/CMakeFiles/appserver.dir/appserver.c.o
[  8%] Building C object src/CMakeFiles/appserver.dir/agwlib.c.o
[  8%] Building C object src/CMakeFiles/appserver.dir/dwsock.c.o
[  9%] Building C object src/CMakeFiles/appserver.dir/dtime_now.c.o
[  9%] Building C object src/CMakeFiles/appserver.dir/ax25_pad.c.o
[ 10%] Building C object src/CMakeFiles/appserver.dir/fcs_calc.c.o
[ 10%] Building C object src/CMakeFiles/appserver.dir/textcolor.c.o
[ 11%] Linking C executable appserver
[ 11%] Built target appserver
Scanning dependencies of target direwolf
[ 12%] Building C object src/CMakeFiles/direwolf.dir/direwolf.c.o
[ 12%] Building C object src/CMakeFiles/direwolf.dir/ais.c.o
[ 13%] Building C object src/CMakeFiles/direwolf.dir/aprs_tt.c.o
[ 13%] Building C object src/CMakeFiles/direwolf.dir/audio_stats.c.o
[ 14%] Building C object src/CMakeFiles/direwolf.dir/ax25_link.c.o
[ 14%] Building C object src/CMakeFiles/direwolf.dir/ax25_pad.c.o
[ 16%] Building C object src/CMakeFiles/direwolf.dir/ax25_pad2.c.o
[ 16%] Building C object src/CMakeFiles/direwolf.dir/beacon.c.o
[ 16%] Building C object src/CMakeFiles/direwolf.dir/config.c.o
[ 17%] Building C object src/CMakeFiles/direwolf.dir/decode_aprs.c.o
[ 17%] Building C object src/CMakeFiles/direwolf.dir/dedupe.c.o
[ 18%] Building C object src/CMakeFiles/direwolf.dir/demod_9600.c.o
[ 18%] Building C object src/CMakeFiles/direwolf.dir/demod_afsk.c.o
[ 19%] Building C object src/CMakeFiles/direwolf.dir/demod_psk.c.o
[ 19%] Building C object src/CMakeFiles/direwolf.dir/demod.c.o
[ 20%] Building C object src/CMakeFiles/direwolf.dir/digipeater.c.o
[ 20%] Building C object src/CMakeFiles/direwolf.dir/cdigipeater.c.o
[ 21%] Building C object src/CMakeFiles/direwolf.dir/dlq.c.o
[ 21%] Building C object src/CMakeFiles/direwolf.dir/dsp.c.o
[ 22%] Building C object src/CMakeFiles/direwolf.dir/dtime_now.c.o
[ 22%] Building C object src/CMakeFiles/direwolf.dir/dtmf.c.o
[ 24%] Building C object src/CMakeFiles/direwolf.dir/dwgps.c.o
[ 24%] Building C object src/CMakeFiles/direwolf.dir/dwsock.c.o
[ 25%] Building C object src/CMakeFiles/direwolf.dir/encode_aprs.c.o
[ 25%] Building C object src/CMakeFiles/direwolf.dir/fcs_calc.c.o
[ 26%] Building C object src/CMakeFiles/direwolf.dir/fx25_encode.c.o
[ 26%] Building C object src/CMakeFiles/direwolf.dir/fx25_extract.c.o
[ 27%] Building C object src/CMakeFiles/direwolf.dir/fx25_init.c.o
[ 27%] Building C object src/CMakeFiles/direwolf.dir/fx25_rec.c.o
[ 28%] Building C object src/CMakeFiles/direwolf.dir/fx25_send.c.o
[ 28%] Building C object src/CMakeFiles/direwolf.dir/fx25_auto.c.o
[ 29%] Building C object src/CMakeFiles/direwolf.dir/gen_tone.c.o
[ 29%] Building C object src/CMakeFiles/direwolf.dir/hdlc_rec.c.o
[ 31%] Building C object src/CMakeFiles/direwolf.dir/hdlc_rec2.c.o
[ 31%] Building C object src/CMakeFiles/direwolf.dir/hdlc_send.c.o
[ 32%] Building C object src/CMakeFiles/direwolf.dir/igate.c.o
[ 32%] Building C object src/CMakeFiles/direwolf.dir/kiss_frame.c.o
[ 33%] Building C object src/CMakeFiles/direwolf.dir/kiss.c.o
[ 33%] Building C object src/CMakeFiles/direwolf.dir/kissserial.c.o
[ 34%] Building C object src/CMakeFiles/direwolf.dir/kissnet.c.o
[ 34%] Building C object src/CMakeFiles/direwolf.dir/latlong.c.o
[ 35%] Building C object src/CMakeFiles/direwolf.dir/log.c.o
[ 35%] Building C object src/CMakeFiles/direwolf.dir/morse.c.o
[ 36%] Building C object src/CMakeFiles/direwolf.dir/multi_modem.c.o
[ 36%] Building C object src/CMakeFiles/direwolf.dir/waypoint.c.o
[ 37%] Building C object src/CMakeFiles/direwolf.dir/serial_port.c.o
[ 37%] Building C object src/CMakeFiles/direwolf.dir/pfilter.c.o
[ 39%] Building C object src/CMakeFiles/direwolf.dir/ptt.c.o
[ 39%] Building C object src/CMakeFiles/direwolf.dir/recv.c.o
[ 40%] Building C object src/CMakeFiles/direwolf.dir/rrbb.c.o
[ 40%] Building C object src/CMakeFiles/direwolf.dir/server.c.o
[ 41%] Building C object src/CMakeFiles/direwolf.dir/symbols.c.o
[ 41%] Building C object src/CMakeFiles/direwolf.dir/telemetry.c.o
[ 42%] Building C object src/CMakeFiles/direwolf.dir/textcolor.c.o
[ 42%] Building C object src/CMakeFiles/direwolf.dir/tq.c.o
[ 43%] Building C object src/CMakeFiles/direwolf.dir/tt_text.c.o
[ 43%] Building C object src/CMakeFiles/direwolf.dir/tt_user.c.o
[ 44%] Building C object src/CMakeFiles/direwolf.dir/xid.c.o
[ 44%] Building C object src/CMakeFiles/direwolf.dir/xmit.c.o
[ 45%] Building C object src/CMakeFiles/direwolf.dir/dwgpsnmea.c.o
[ 45%] Building C object src/CMakeFiles/direwolf.dir/dwgpsd.c.o
[ 47%] Building C object src/CMakeFiles/direwolf.dir/mheard.c.o
[ 47%] Building C object src/CMakeFiles/direwolf.dir/audio.c.o
[ 48%] Building C object src/CMakeFiles/direwolf.dir/cm108.c.o
[ 48%] Linking C executable direwolf
[ 48%] Built target direwolf
Scanning dependencies of target tt2text
[ 48%] Building C object src/CMakeFiles/tt2text.dir/tt_text.c.o
[ 49%] Linking C executable tt2text
[ 49%] Built target tt2text
Scanning dependencies of target decode_aprs
[ 50%] Building C object src/CMakeFiles/decode_aprs.dir/decode_aprs.c.o
[ 50%] Building C object src/CMakeFiles/decode_aprs.dir/ais.c.o
[ 51%] Building C object src/CMakeFiles/decode_aprs.dir/kiss_frame.c.o
[ 51%] Building C object src/CMakeFiles/decode_aprs.dir/ax25_pad.c.o
[ 52%] Building C object src/CMakeFiles/decode_aprs.dir/dwgpsnmea.c.o
[ 52%] Building C object src/CMakeFiles/decode_aprs.dir/dwgps.c.o
[ 54%] Building C object src/CMakeFiles/decode_aprs.dir/dwgpsd.c.o
[ 54%] Building C object src/CMakeFiles/decode_aprs.dir/serial_port.c.o
[ 55%] Building C object src/CMakeFiles/decode_aprs.dir/symbols.c.o
[ 55%] Building C object src/CMakeFiles/decode_aprs.dir/textcolor.c.o
[ 56%] Building C object src/CMakeFiles/decode_aprs.dir/fcs_calc.c.o
[ 56%] Building C object src/CMakeFiles/decode_aprs.dir/latlong.c.o
[ 57%] Building C object src/CMakeFiles/decode_aprs.dir/log.c.o
[ 57%] Building C object src/CMakeFiles/decode_aprs.dir/telemetry.c.o
[ 58%] Building C object src/CMakeFiles/decode_aprs.dir/tt_text.c.o
[ 58%] Linking C executable decode_aprs
[ 58%] Built target decode_aprs
Scanning dependencies of target text2tt
[ 58%] Building C object src/CMakeFiles/text2tt.dir/tt_text.c.o
[ 59%] Linking C executable text2tt
[ 59%] Built target text2tt
Scanning dependencies of target utm2ll
[ 60%] Building C object src/CMakeFiles/utm2ll.dir/utm2ll.c.o
[ 60%] Building C object src/CMakeFiles/utm2ll.dir/textcolor.c.o
[ 62%] Linking C executable utm2ll
[ 62%] Built target utm2ll
Scanning dependencies of target gen_packets
[ 63%] Building C object src/CMakeFiles/gen_packets.dir/gen_packets.c.o
[ 63%] Building C object src/CMakeFiles/gen_packets.dir/ax25_pad.c.o
[ 64%] Building C object src/CMakeFiles/gen_packets.dir/fx25_encode.c.o
[ 64%] Building C object src/CMakeFiles/gen_packets.dir/fx25_init.c.o
[ 65%] Building C object src/CMakeFiles/gen_packets.dir/fx25_send.c.o
[ 65%] Building C object src/CMakeFiles/gen_packets.dir/hdlc_send.c.o
[ 66%] Building C object src/CMakeFiles/gen_packets.dir/fcs_calc.c.o
[ 66%] Building C object src/CMakeFiles/gen_packets.dir/gen_tone.c.o
[ 67%] Building C object src/CMakeFiles/gen_packets.dir/morse.c.o
[ 67%] Building C object src/CMakeFiles/gen_packets.dir/dtmf.c.o
[ 68%] Building C object src/CMakeFiles/gen_packets.dir/textcolor.c.o
[ 68%] Building C object src/CMakeFiles/gen_packets.dir/dsp.c.o
[ 70%] Linking C executable gen_packets
[ 70%] Built target gen_packets
Scanning dependencies of target ttcalc
[ 70%] Building C object src/CMakeFiles/ttcalc.dir/ttcalc.c.o
[ 71%] Building C object src/CMakeFiles/ttcalc.dir/ax25_pad.c.o
[ 71%] Building C object src/CMakeFiles/ttcalc.dir/fcs_calc.c.o
[ 72%] Building C object src/CMakeFiles/ttcalc.dir/textcolor.c.o
[ 72%] Linking C executable ttcalc
[ 72%] Built target ttcalc
Scanning dependencies of target log2gpx
[ 72%] Building C object src/CMakeFiles/log2gpx.dir/log2gpx.c.o
[ 73%] Building C object src/CMakeFiles/log2gpx.dir/textcolor.c.o
[ 73%] Linking C executable log2gpx
[ 73%] Built target log2gpx
Scanning dependencies of target atest
[ 73%] Building C object src/CMakeFiles/atest.dir/atest.c.o
[ 74%] Building C object src/CMakeFiles/atest.dir/ais.c.o
[ 74%] Building C object src/CMakeFiles/atest.dir/demod.c.o
[ 75%] Building C object src/CMakeFiles/atest.dir/demod_afsk.c.o
[ 75%] Building C object src/CMakeFiles/atest.dir/demod_psk.c.o
[ 77%] Building C object src/CMakeFiles/atest.dir/demod_9600.c.o
[ 77%] Building C object src/CMakeFiles/atest.dir/dsp.c.o
[ 78%] Building C object src/CMakeFiles/atest.dir/fx25_extract.c.o
[ 78%] Building C object src/CMakeFiles/atest.dir/fx25_init.c.o
[ 79%] Building C object src/CMakeFiles/atest.dir/fx25_rec.c.o
[ 79%] Building C object src/CMakeFiles/atest.dir/hdlc_rec.c.o
[ 80%] Building C object src/CMakeFiles/atest.dir/hdlc_rec2.c.o
[ 80%] Building C object src/CMakeFiles/atest.dir/multi_modem.c.o
[ 81%] Building C object src/CMakeFiles/atest.dir/rrbb.c.o
[ 81%] Building C object src/CMakeFiles/atest.dir/fcs_calc.c.o
[ 82%] Building C object src/CMakeFiles/atest.dir/ax25_pad.c.o
[ 82%] Building C object src/CMakeFiles/atest.dir/decode_aprs.c.o
[ 83%] Building C object src/CMakeFiles/atest.dir/dwgpsnmea.c.o
[ 83%] Building C object src/CMakeFiles/atest.dir/dwgps.c.o
[ 85%] Building C object src/CMakeFiles/atest.dir/dwgpsd.c.o
[ 85%] Building C object src/CMakeFiles/atest.dir/serial_port.c.o
[ 86%] Building C object src/CMakeFiles/atest.dir/telemetry.c.o
[ 86%] Building C object src/CMakeFiles/atest.dir/dtime_now.c.o
[ 87%] Building C object src/CMakeFiles/atest.dir/latlong.c.o
[ 87%] Building C object src/CMakeFiles/atest.dir/symbols.c.o
[ 88%] Building C object src/CMakeFiles/atest.dir/tt_text.c.o
[ 88%] Building C object src/CMakeFiles/atest.dir/textcolor.c.o
[ 89%] Linking C executable atest
[ 89%] Built target atest
Scanning dependencies of target aclients
[ 89%] Building C object src/CMakeFiles/aclients.dir/aclients.c.o
[ 89%] Building C object src/CMakeFiles/aclients.dir/ax25_pad.c.o
[ 90%] Building C object src/CMakeFiles/aclients.dir/fcs_calc.c.o
[ 90%] Building C object src/CMakeFiles/aclients.dir/textcolor.c.o
[ 91%] Linking C executable aclients
[ 91%] Built target aclients
Scanning dependencies of target ll2utm
[ 93%] Building C object src/CMakeFiles/ll2utm.dir/ll2utm.c.o
[ 93%] Building C object src/CMakeFiles/ll2utm.dir/textcolor.c.o
[ 94%] Linking C executable ll2utm
[ 94%] Built target ll2utm
Scanning dependencies of target kissutil
[ 94%] Building C object src/CMakeFiles/kissutil.dir/kissutil.c.o
[ 95%] Building C object src/CMakeFiles/kissutil.dir/kiss_frame.c.o
[ 95%] Building C object src/CMakeFiles/kissutil.dir/ax25_pad.c.o
[ 96%] Building C object src/CMakeFiles/kissutil.dir/fcs_calc.c.o
[ 96%] Building C object src/CMakeFiles/kissutil.dir/textcolor.c.o
[ 97%] Building C object src/CMakeFiles/kissutil.dir/serial_port.c.o
[ 97%] Building C object src/CMakeFiles/kissutil.dir/dtime_now.c.o
[ 98%] Building C object src/CMakeFiles/kissutil.dir/dwsock.c.o
[ 98%] Linking C executable kissutil
[ 98%] Built target kissutil
Scanning dependencies of target cm108
[ 98%] Building C object src/CMakeFiles/cm108.dir/cm108.c.o
[100%] Building C object src/CMakeFiles/cm108.dir/textcolor.c.o
[100%] Linking C executable cm108
[100%] Built target cm108
jacob@jacob-aspire:/tmp/direwolf$ ll
total 16
drwxrwxr-x  4 jacob jacob 4096 May 26 10:17 ./
drwxrwxrwt 20 root  root  4096 May 26 10:15 ../
drwxr-xr-x 11 root  root  4096 May 26 10:17 build/
drwxr-xr-x 15 root  root  4096 May 26 10:17 direwolf/
jacob@jacob-aspire:/tmp/direwolf$ ll build/src/
total 2064
drwxr-xr-x  3 root root   4096 May 26 10:18 ./
drwxr-xr-x 11 root root   4096 May 26 10:17 ../
-rwxr-xr-x  1 root root  79568 May 26 10:18 aclients*
-rwxr-xr-x  1 root root  97880 May 26 10:17 appserver*
-rwxr-xr-x  1 root root 292352 May 26 10:18 atest*
-rwxr-xr-x  1 root root  33360 May 26 10:18 cm108*
drwxr-xr-x 16 root root   4096 May 26 10:17 CMakeFiles/
-rw-r--r--  1 root root  11761 May 26 10:17 cmake_install.cmake
-rwxr-xr-x  1 root root 211176 May 26 10:18 decode_aprs*
-rwxr-xr-x  1 root root 714880 May 26 10:18 direwolf*
-rwxr-xr-x  1 root root 111744 May 26 10:18 gen_packets*
-rwxr-xr-x  1 root root  94248 May 26 10:18 kissutil*
-rwxr-xr-x  1 root root  70344 May 26 10:18 ll2utm*
-rwxr-xr-x  1 root root  28496 May 26 10:18 log2gpx*
-rw-r--r--  1 root root  96873 May 26 10:17 Makefile
-rwxr-xr-x  1 root root  36744 May 26 10:18 text2tt*
-rwxr-xr-x  1 root root  36752 May 26 10:18 tt2text*
-rwxr-xr-x  1 root root  78672 May 26 10:18 ttcalc*
-rwxr-xr-x  1 root root  74680 May 26 10:18 utm2ll*
```

