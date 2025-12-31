# Generated with JReleaser 1.22.0-SNAPSHOT at 2025-12-31T15:00:51.881964587Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'jreleaser-1.22.0'
$app_exe = Join-Path $app_home 'bin/jreleaser.bat'

Install-ChocolateyZipPackage `
    -PackageName 'jreleaser' `
    -Url 'https://github.com/jreleaser/jreleaser/releases/download/v1.22.0/jreleaser-1.22.0.zip' `
    -Checksum 'e4355b24942c8bbd9afb26426ec1a930a4412d3856e96bac007b3d6a9e76b29c' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'jreleaser' -Path $app_exe
