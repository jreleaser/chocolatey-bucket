# Generated with JReleaser 1.13.0-SNAPSHOT at 2024-06-30T10:12:21.291523965Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'jreleaser-1.13.0'
$app_exe = Join-Path $app_home 'bin/jreleaser.bat'

Install-ChocolateyZipPackage `
    -PackageName 'jreleaser' `
    -Url 'https://github.com/jreleaser/jreleaser/releases/download/v1.13.0/jreleaser-1.13.0.zip' `
    -Checksum '1cc489ed37c8040beefe2abf1842b921c86ab4c80260a68c7c9f6205e1fc1851' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'jreleaser' -Path $app_exe
