#!/bin/env bash

yum update -y

# Install the Parallels tools

mkdir /media/cdrom
mount /dev/cdrom /media/cdrom
/mdeia/cdmrom/install

# To get the version

yum install -y redhat-lsb

# Standard dev tools

yum groupinstall -y "Development tools"

# Install devtoolset-6

yum install -y centos-release-scl
yum install -y devtoolset-6

# Activate it

source /opt/rh/devtoolset-6/enable

# YCM Dependencies: cmake, python

yum install -y cmake
yum install -y python33 python33-devel
source /opt/rh/python33/enable

# golang, node, typescript

yum install -y epel-release
# yum install -y golang

curl --silent --location https://rpm.nodesource.com/setup_8.x | bash -
yum install -y nodejs

npm install -g typescript

# mono
yum install -y yum-utils
rpm --import "http://keyserver.ubuntu.com/pks/lookup?op=get&search=0x3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF"
yum-config-manager --add-repo http://download.mono-project.com/repo/centos7/
yum install -y mono-devel
