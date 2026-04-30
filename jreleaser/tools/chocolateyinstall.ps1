# Generated with JReleaser 1.24.0-SNAPSHOT at 2026-04-30T11:17:23.903587413Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'jreleaser-1.24.0'
$app_exe = Join-Path $app_home 'bin/jreleaser.bat'

Install-ChocolateyZipPackage `
    -PackageName 'jreleaser' `
    -Url 'https://github.com/jreleaser/jreleaser/releases/download/v1.24.0/jreleaser-1.24.0.zip' `
    -Checksum 'b9474ee4e8ab7b69ef8335f746a200861588325cab9eb40470f016fe2c56062f' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'jreleaser' -Path $app_exe
