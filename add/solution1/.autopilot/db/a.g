#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/centos/src/vivado-hls/add/solution1/.autopilot/db/a.g.bc ${1+"$@"}
