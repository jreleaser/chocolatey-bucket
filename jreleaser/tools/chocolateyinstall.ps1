# Generated with JReleaser 1.10.0-SNAPSHOT at 2023-12-31T16:01:47.022516386Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'jreleaser-1.10.0'
$app_exe = Join-Path $app_home 'bin/jreleaser.bat'

Install-ChocolateyZipPackage `
    -PackageName 'jreleaser' `
    -Url 'https://github.com/jreleaser/jreleaser/releases/download/v1.10.0/jreleaser-1.10.0.zip' `
    -Checksum 'a3dc16afe344d888b8fd9548d082c69b05e393da50e4991f5e3da30c9d78164c' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'jreleaser' -Path $app_exe
