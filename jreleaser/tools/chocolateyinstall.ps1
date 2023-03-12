# Generated with JReleaser 1.6.0-SNAPSHOT at 2023-03-12T10:15:10.135700883Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'jreleaser-1.5.1'
$app_exe = Join-Path $app_home 'bin/jreleaser.bat'

Install-ChocolateyZipPackage `
    -PackageName 'jreleaser' `
    -Url 'https://github.com/jreleaser/jreleaser/releases/download/v1.5.1/jreleaser-1.5.1.zip' `
    -Checksum 'd13384f83a16526ea0c4ef4d5e4f9d637b7100ddd470a637ac361245151c8340' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'jreleaser' -Path $app_exe
