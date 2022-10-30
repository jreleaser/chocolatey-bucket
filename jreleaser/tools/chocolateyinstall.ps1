# Generated with JReleaser 1.3.0-SNAPSHOT at 2022-10-30T12:12:20.961917986Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'jreleaser-1.3.0'
$app_exe = Join-Path $app_home 'bin/jreleaser.bat'

Install-ChocolateyZipPackage `
    -PackageName 'jreleaser' `
    -Url 'https://github.com/jreleaser/jreleaser/releases/download/v1.3.0/jreleaser-1.3.0.zip' `
    -Checksum '035db6a250944dc6960e622a15226d83b6cfda62a4db048614f2c1ebf8895ac0' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'jreleaser' -Path $app_exe
