# Generated with JReleaser 1.23.0-SNAPSHOT at 2026-02-28T07:45:23.249774677Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'jreleaser-1.23.0'
$app_exe = Join-Path $app_home 'bin/jreleaser.bat'

Install-ChocolateyZipPackage `
    -PackageName 'jreleaser' `
    -Url 'https://github.com/jreleaser/jreleaser/releases/download/v1.23.0/jreleaser-1.23.0.zip' `
    -Checksum '69232072d4c8ed71fd579211c38a6dd25c5a10b9b6cbd70bcaf2117fc5c2ed61' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'jreleaser' -Path $app_exe
