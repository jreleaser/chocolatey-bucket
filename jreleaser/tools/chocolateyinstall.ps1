# Generated with JReleaser 1.16.0-SNAPSHOT at 2024-12-31T11:03:40.173959401Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'jreleaser-1.16.0'
$app_exe = Join-Path $app_home 'bin/jreleaser.bat'

Install-ChocolateyZipPackage `
    -PackageName 'jreleaser' `
    -Url 'https://github.com/jreleaser/jreleaser/releases/download/v1.16.0/jreleaser-1.16.0.zip' `
    -Checksum '7216a8b70616cf0554326db9bf704832f4fe67d4e370b2111629e50a6f9a04da' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'jreleaser' -Path $app_exe
