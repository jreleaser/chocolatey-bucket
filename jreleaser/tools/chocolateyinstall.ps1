# Generated with JReleaser 1.15.0-SNAPSHOT at 2024-10-31T08:59:56.877249853Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'jreleaser-1.15.0'
$app_exe = Join-Path $app_home 'bin/jreleaser.bat'

Install-ChocolateyZipPackage `
    -PackageName 'jreleaser' `
    -Url 'https://github.com/jreleaser/jreleaser/releases/download/v1.15.0/jreleaser-1.15.0.zip' `
    -Checksum 'fd3d5b424190956313da111c144bb4788fc647907722e4a662c1e6654c2ac384' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'jreleaser' -Path $app_exe
