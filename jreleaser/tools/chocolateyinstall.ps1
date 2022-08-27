# Generated with JReleaser 1.2.0-SNAPSHOT at 2022-08-27T16:58:09.389566453Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'jreleaser-1.2.0'
$app_exe = Join-Path $app_home 'bin/jreleaser.bat'

Install-ChocolateyZipPackage `
    -PackageName 'jreleaser' `
    -Url 'https://github.com/jreleaser/jreleaser/releases/download/v1.2.0/jreleaser-1.2.0.zip' `
    -Checksum 'cff8a16fa52356d4d7bb9abebffdb4534e6b7bfb545b0f0cbd459513050472a3' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'jreleaser' -Path $app_exe
