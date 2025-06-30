# Generated with JReleaser 1.19.0-SNAPSHOT at 2025-06-30T19:01:50.059412808Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'jreleaser-1.19.0'
$app_exe = Join-Path $app_home 'bin/jreleaser.bat'

Install-ChocolateyZipPackage `
    -PackageName 'jreleaser' `
    -Url 'https://github.com/jreleaser/jreleaser/releases/download/v1.19.0/jreleaser-1.19.0.zip' `
    -Checksum '5a20df93b51654f6a06984a587e4c3595f5746b95f202b571d707315a2191efe' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'jreleaser' -Path $app_exe
