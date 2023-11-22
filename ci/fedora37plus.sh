#!/bin/bash

set -e

dnf install -y rpm-build make gcc gcc-c++ libdrm-devel systemd-rpm-macros glibc-devel-2.38-10.fc39.i686 glibc32-2.38-10.fc39.x86_64 wget git 'dnf-command(builddep)'

dnf builddep -y --spec ./displaylink.spec

make $SPECIFICTARGET
