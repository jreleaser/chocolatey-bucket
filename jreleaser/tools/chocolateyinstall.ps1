# Generated with JReleaser 1.0.0-SNAPSHOT at 2022-02-13T12:11:01.494659Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'jreleaser-1.0.0-M2'
$app_exe = Join-Path $app_home 'bin/jreleaser.bat'

Install-ChocolateyZipPackage `
    -PackageName 'jreleaser' `
    -Url 'https://github.com/jreleaser/jreleaser/releases/download/v1.0.0-M2/jreleaser-1.0.0-M2.zip' `
    -Checksum '7ca27efc21c34c091a7d96aefbd3a78175d440f7673f0c705ca670a946b60541' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'jreleaser' -Path $app_exe
