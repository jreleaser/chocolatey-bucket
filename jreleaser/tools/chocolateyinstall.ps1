# Generated with JReleaser 1.8.0-SNAPSHOT at 2023-08-31T22:12:22.043287351Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'jreleaser-1.8.0'
$app_exe = Join-Path $app_home 'bin/jreleaser.bat'

Install-ChocolateyZipPackage `
    -PackageName 'jreleaser' `
    -Url 'https://github.com/jreleaser/jreleaser/releases/download/v1.8.0/jreleaser-1.8.0.zip' `
    -Checksum '9b9c0c7b4e07cd058593114111a1ddaaa752937308d85216666f64ce1d588d1e' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'jreleaser' -Path $app_exe
