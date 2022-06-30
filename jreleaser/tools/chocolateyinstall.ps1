# Generated with JReleaser 1.1.0-SNAPSHOT at 2022-06-30T15:46:43.841258289Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'jreleaser-1.1.0'
$app_exe = Join-Path $app_home 'bin/jreleaser.bat'

Install-ChocolateyZipPackage `
    -PackageName 'jreleaser' `
    -Url 'https://github.com/jreleaser/jreleaser/releases/download/v1.1.0/jreleaser-1.1.0.zip' `
    -Checksum 'c0b7ecc8b5159b050d946c01ff4e649e6dc0f473c416c6eadc4365f8b7c7f84a' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'jreleaser' -Path $app_exe
