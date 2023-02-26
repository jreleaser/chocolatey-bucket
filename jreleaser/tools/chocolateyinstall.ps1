# Generated with JReleaser 1.5.0-SNAPSHOT at 2023-02-26T14:50:16.547059026Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'jreleaser-1.5.0'
$app_exe = Join-Path $app_home 'bin/jreleaser.bat'

Install-ChocolateyZipPackage `
    -PackageName 'jreleaser' `
    -Url 'https://github.com/jreleaser/jreleaser/releases/download/v1.5.0/jreleaser-1.5.0.zip' `
    -Checksum 'baa07cd0c840bf24f554f564f70372ef81189956141b6ac432a507ff1f05c783' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'jreleaser' -Path $app_exe
