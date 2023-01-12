// Created by Grigore Stefan <g_stefan@yahoo.com>
// Public domain (Unlicense) <http://unlicense.org>
// SPDX-FileCopyrightText: 2022 Grigore Stefan <g_stefan@yahoo.com>
// SPDX-License-Identifier: Unlicense

messageAction("vendor");

Shell.mkdirRecursivelyIfNotExists("vendor");

var vendor = "openssh-" + Project.version + "-win64-msvc-2022.7z";
if (!Shell.fileExists("vendor/" + vendor)) {
	var webLink = "https://github.com/g-stefan/vendor-openssh/releases/download/v" + Project.version + "/" + vendor;
	var cmd = "curl --insecure --location " + webLink + " --output vendor/" + vendor;
	Console.writeLn(cmd);
	exitIf(Shell.system(cmd));
};
