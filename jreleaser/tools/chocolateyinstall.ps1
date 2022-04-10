# Generated with JReleaser 1.0.0-SNAPSHOT at 2022-04-10T05:36:33.640517Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'jreleaser-1.0.0'
$app_exe = Join-Path $app_home 'bin/jreleaser.bat'

Install-ChocolateyZipPackage `
    -PackageName 'jreleaser' `
    -Url 'https://github.com/jreleaser/jreleaser/releases/download/v1.0.0/jreleaser-1.0.0.zip' `
    -Checksum '07464127c00564bf8067c8fb490c2ddcc2ce19ac09604be92ce6b0bd3b48c2e7' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'jreleaser' -Path $app_exe
