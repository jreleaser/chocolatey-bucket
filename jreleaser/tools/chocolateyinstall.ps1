# Generated with JReleaser 1.6.0-SNAPSHOT at 2023-04-29T10:13:03.544759325Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'jreleaser-1.6.0'
$app_exe = Join-Path $app_home 'bin/jreleaser.bat'

Install-ChocolateyZipPackage `
    -PackageName 'jreleaser' `
    -Url 'https://github.com/jreleaser/jreleaser/releases/download/v1.6.0/jreleaser-1.6.0.zip' `
    -Checksum '58a0593ecce9e2acad2851374d24dc8180bfbe6dfe48de35a1d1ba75747df1b1' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'jreleaser' -Path $app_exe
