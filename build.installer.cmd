@echo off
rem Public domain
rem http://unlicense.org/
rem Created by Grigore Stefan <g_stefan@yahoo.com>

echo -^> installer openssh

call build.config.cmd

if exist installer\ rmdir /Q /S installer
mkdir installer

if exist build\ rmdir /Q /S build
mkdir build

makensis.exe /NOCD "util\openssh-installer.nsi"

call grigore-stefan.sign "OpenSSH" "installer\openssh-%PRODUCT_VERSION%-installer.exe"

if exist build\ rmdir /Q /S build
