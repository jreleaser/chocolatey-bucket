# Generated with JReleaser 1.14.0-SNAPSHOT at 2024-06-30T13:00:04.112802098Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'jreleaser-1.13.1'
$app_exe = Join-Path $app_home 'bin/jreleaser.bat'

Install-ChocolateyZipPackage `
    -PackageName 'jreleaser' `
    -Url 'https://github.com/jreleaser/jreleaser/releases/download/v1.13.1/jreleaser-1.13.1.zip' `
    -Checksum 'c384888b61fd99ba3a3d3366a20ca5bb63e6ec054eb2841490ede5762d87ae59' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'jreleaser' -Path $app_exe
