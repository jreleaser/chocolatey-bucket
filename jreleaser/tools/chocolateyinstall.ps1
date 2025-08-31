# Generated with JReleaser 1.20.0-SNAPSHOT at 2025-08-31T16:31:37.345453357Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'jreleaser-1.20.0'
$app_exe = Join-Path $app_home 'bin/jreleaser.bat'

Install-ChocolateyZipPackage `
    -PackageName 'jreleaser' `
    -Url 'https://github.com/jreleaser/jreleaser/releases/download/v1.20.0/jreleaser-1.20.0.zip' `
    -Checksum 'e64ca1ab30ddf0f66ba3380f8af3fc6aa8b335181eaf23530a08fe8370e2cd15' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'jreleaser' -Path $app_exe
