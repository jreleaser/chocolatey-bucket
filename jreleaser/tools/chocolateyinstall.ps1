# Generated with JReleaser 1.4.0-SNAPSHOT at 2022-11-05T10:10:05.154313676Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'jreleaser-1.3.1'
$app_exe = Join-Path $app_home 'bin/jreleaser.bat'

Install-ChocolateyZipPackage `
    -PackageName 'jreleaser' `
    -Url 'https://github.com/jreleaser/jreleaser/releases/download/v1.3.1/jreleaser-1.3.1.zip' `
    -Checksum '692928c07496873bd72c92afc056939b3b853c7960985c91b6dfee07798d0fe5' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'jreleaser' -Path $app_exe
