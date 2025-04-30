# Generated with JReleaser 1.18.0-SNAPSHOT at 2025-04-30T09:23:20.225786408Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'jreleaser-1.18.0'
$app_exe = Join-Path $app_home 'bin/jreleaser.bat'

Install-ChocolateyZipPackage `
    -PackageName 'jreleaser' `
    -Url 'https://github.com/jreleaser/jreleaser/releases/download/v1.18.0/jreleaser-1.18.0.zip' `
    -Checksum '581b6089f2fecc3eefa33da530df54cbf8e8fe57f2c2c85d8d29d1b111a84424' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'jreleaser' -Path $app_exe
