# Generated with JReleaser 1.0.0-SNAPSHOT at 2022-01-22T09:46:39.196814Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'jreleaser-1.0.0-M1'
$app_bat = Join-Path $app_home 'bin/jreleaser.bat'

Install-ChocolateyZipPackage `
    -PackageName 'jreleaser' `
    -Url 'https://github.com/jreleaser/jreleaser/releases/download/v1.0.0-M1/jreleaser-1.0.0-M1.zip' `
    -Checksum '1ca9c93eb7c235424db7374b34716986e9c9a5a08c8f9945847130e5b06282da' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'jreleaser' -Path $app_bat
