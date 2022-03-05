# Generated with JReleaser 1.0.0-SNAPSHOT at 2022-03-05T15:54:17.031894Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'jreleaser-1.0.0-M3'
$app_exe = Join-Path $app_home 'bin/jreleaser.bat'

Install-ChocolateyZipPackage `
    -PackageName 'jreleaser' `
    -Url 'https://github.com/jreleaser/jreleaser/releases/download/v1.0.0-M3/jreleaser-1.0.0-M3.zip' `
    -Checksum '167b99bdf927453ff6bb03d409c193a5308848911bf553c0fc840b28c413ddbd' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'jreleaser' -Path $app_exe
