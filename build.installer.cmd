@echo off
rem Public domain
rem http://unlicense.org/
rem Created by Grigore Stefan <g_stefan@yahoo.com>

echo -^> installer openssh

if exist installer\ rmdir /Q /S installer
mkdir installer

if exist build\ rmdir /Q /S build
mkdir build

makensis.exe /NOCD "util\openssh-installer.nsi"

call grigore-stefan.sign "OpenSSH" "installer\openssh-8.1.0.0-installer.exe"

if exist build\ rmdir /Q /S build
