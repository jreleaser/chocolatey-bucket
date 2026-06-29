# Generated with JReleaser 1.25.0-SNAPSHOT at 2026-06-29T07:57:31.988946286Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'jreleaser-1.25.0'
$app_exe = Join-Path $app_home 'bin/jreleaser.bat'

Install-ChocolateyZipPackage `
    -PackageName 'jreleaser' `
    -Url 'https://github.com/jreleaser/jreleaser/releases/download/v1.25.0/jreleaser-1.25.0.zip' `
    -Checksum '7c086a384e509ae30ad12ce2f10946601c0798e746d06a5538afc267e398644b' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'jreleaser' -Path $app_exe
