# Generated with JReleaser 1.17.0-SNAPSHOT at 2025-02-28T08:12:05.668760258Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'jreleaser-1.17.0'
$app_exe = Join-Path $app_home 'bin/jreleaser.bat'

Install-ChocolateyZipPackage `
    -PackageName 'jreleaser' `
    -Url 'https://github.com/jreleaser/jreleaser/releases/download/v1.17.0/jreleaser-1.17.0.zip' `
    -Checksum '0992446f16133581e441fce3ed9c576a6966483e49ecfd3641386f940541b61d' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'jreleaser' -Path $app_exe
