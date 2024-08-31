# Generated with JReleaser 1.14.0-SNAPSHOT at 2024-08-31T07:00:25.327300349Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'jreleaser-1.14.0'
$app_exe = Join-Path $app_home 'bin/jreleaser.bat'

Install-ChocolateyZipPackage `
    -PackageName 'jreleaser' `
    -Url 'https://github.com/jreleaser/jreleaser/releases/download/v1.14.0/jreleaser-1.14.0.zip' `
    -Checksum '9ffaae7cef052bc01415f47865f6fe3cccef7e470527eaaf5d3c0245f36acba9' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'jreleaser' -Path $app_exe
