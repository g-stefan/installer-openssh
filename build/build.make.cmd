@echo off
rem Public domain
rem http://unlicense.org/
rem Created by Grigore Stefan <g_stefan@yahoo.com>

call build\build.config.cmd

echo -^> make %PRODUCT_NAME%

if exist temp\ rmdir /Q /S temp
if exist output\ rmdir /Q /S output

mkdir temp

7z x "vendor/openssh-%PRODUCT_VERSION%-win64-msvc-2019.7z" -aoa -otemp
move /Y "temp\openssh-%PRODUCT_VERSION%-win64-msvc-2019" "output"
if exist temp\ rmdir /Q /S temp
