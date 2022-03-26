# Generated with JReleaser 1.0.0-SNAPSHOT at 2022-03-26T09:55:36.29189Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'jreleaser-1.0.0-RC1'
$app_exe = Join-Path $app_home 'bin/jreleaser.bat'

Install-ChocolateyZipPackage `
    -PackageName 'jreleaser' `
    -Url 'https://github.com/jreleaser/jreleaser/releases/download/v1.0.0-RC1/jreleaser-1.0.0-RC1.zip' `
    -Checksum '11dd9fdb8a55039c6a84f779bce90e04037662d6487832e3425665f0a5a4fe36' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'jreleaser' -Path $app_exe
