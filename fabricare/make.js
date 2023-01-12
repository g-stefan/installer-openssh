// Created by Grigore Stefan <g_stefan@yahoo.com>
// Public domain (Unlicense) <http://unlicense.org>
// SPDX-FileCopyrightText: 2022 Grigore Stefan <g_stefan@yahoo.com>
// SPDX-License-Identifier: Unlicense

Fabricare.include("vendor");

// ---

messageAction("make");

if (Shell.fileExists("temp/build.done.flag")) {
	return;
};

Shell.removeDirRecursivelyForce("output");
Shell.removeDirRecursivelyForce("temp");

Shell.system("7z x \"vendor/openssh-"+Project.version+"-win64-msvc-2022.7z\" -aoa -ooutput");

Shell.mkdirRecursivelyIfNotExists("temp");
Shell.filePutContents("temp/build.done.flag", "done");
