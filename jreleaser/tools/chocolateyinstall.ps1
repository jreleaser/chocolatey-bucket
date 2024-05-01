# Generated with JReleaser 1.12.0-SNAPSHOT at 2024-05-01T13:00:50.646676518Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'jreleaser-1.12.0'
$app_exe = Join-Path $app_home 'bin/jreleaser.bat'

Install-ChocolateyZipPackage `
    -PackageName 'jreleaser' `
    -Url 'https://github.com/jreleaser/jreleaser/releases/download/v1.12.0/jreleaser-1.12.0.zip' `
    -Checksum 'e72b06f31d2f9f4c00f78e12d5073725d0379506e5455dd6391de1fc514bfc48' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'jreleaser' -Path $app_exe
