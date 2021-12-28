# Generated with JReleaser 0.10.0-SNAPSHOT at 2021-12-28T14:52:05.57129Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'jreleaser-0.10.0'
$app_bat = Join-Path $app_home 'bin/jreleaser.bat'

Install-ChocolateyZipPackage `
    -PackageName 'jreleaser' `
    -Url 'https://github.com/jreleaser/jreleaser/releases/download/v0.10.0/jreleaser-0.10.0.zip' `
    -Checksum '956669d3c3032cf2c583b502bdc836823f7285ec8283291d66a65293acbe61e9' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'jreleaser' -Path $app_bat
