# Generated with JReleaser 1.7.0-SNAPSHOT at 2023-06-27T13:02:28.955362088Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'jreleaser-1.7.0'
$app_exe = Join-Path $app_home 'bin/jreleaser.bat'

Install-ChocolateyZipPackage `
    -PackageName 'jreleaser' `
    -Url 'https://github.com/jreleaser/jreleaser/releases/download/v1.7.0/jreleaser-1.7.0.zip' `
    -Checksum 'e1c387d9a6c553eb92a7f0dcd3022f803e246fc2ac3fa31b09b5b1fb5b733627' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'jreleaser' -Path $app_exe
