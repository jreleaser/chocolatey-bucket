# Generated with JReleaser 1.9.0-SNAPSHOT at 2023-11-01T09:09:29.092189226Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'jreleaser-1.9.0'
$app_exe = Join-Path $app_home 'bin/jreleaser.bat'

Install-ChocolateyZipPackage `
    -PackageName 'jreleaser' `
    -Url 'https://github.com/jreleaser/jreleaser/releases/download/v1.9.0/jreleaser-1.9.0.zip' `
    -Checksum 'b4c1eff349d6ac494e40422b6be109c547bc9b353a5d40417b40848925429234' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'jreleaser' -Path $app_exe
