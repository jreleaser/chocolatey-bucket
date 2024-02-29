# Generated with JReleaser 1.11.0-SNAPSHOT at 2024-02-29T12:31:31.529400801Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'jreleaser-1.11.0'
$app_exe = Join-Path $app_home 'bin/jreleaser.bat'

Install-ChocolateyZipPackage `
    -PackageName 'jreleaser' `
    -Url 'https://github.com/jreleaser/jreleaser/releases/download/v1.11.0/jreleaser-1.11.0.zip' `
    -Checksum '09379065cf37bfed8182dbf801af42935a8ea4108410ea643c794585db9a16fc' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'jreleaser' -Path $app_exe
