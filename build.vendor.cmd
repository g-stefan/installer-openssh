@echo off
rem Public domain
rem http://unlicense.org/
rem Created by Grigore Stefan <g_stefan@yahoo.com>

call build.config.cmd

echo -^> vendor %PRODUCT_NAME%

if not exist vendor\ mkdir vendor

set WEB_LINK=https://github.com/g-stefan/vendor-openssh/releases/download/v%PRODUCT_VERSION%/openssh-%PRODUCT_VERSION%-win64-msvc-2019.7z
if not exist vendor\openssh-%PRODUCT_VERSION%-win64-msvc-2019.7z curl --insecure --location %WEB_LINK% --output vendor\openssh-%PRODUCT_VERSION%-win64-msvc-2019.7z
