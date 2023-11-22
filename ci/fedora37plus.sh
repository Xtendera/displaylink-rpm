#!/bin/bash

set -e

dnf install -y rpm-build make gcc gcc-c++ libdrm-devel systemd-rpm-macros glibc-devel glibc-devel.i686 wget git 'dnf-command(builddep)'

dnf builddep -y --spec ./displaylink.spec

make $SPECIFICTARGET
