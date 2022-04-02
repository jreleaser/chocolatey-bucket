# Generated with JReleaser 1.0.0-SNAPSHOT at 2022-04-02T15:50:07.287489Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'jreleaser-1.0.0-RC2'
$app_exe = Join-Path $app_home 'bin/jreleaser.bat'

Install-ChocolateyZipPackage `
    -PackageName 'jreleaser' `
    -Url 'https://github.com/jreleaser/jreleaser/releases/download/v1.0.0-RC2/jreleaser-1.0.0-RC2.zip' `
    -Checksum '2ebb0e78752aa3c716d35f5a8a4b2d087271535d299cb1fe4b347db554317770' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'jreleaser' -Path $app_exe
