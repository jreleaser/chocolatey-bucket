$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'jreleaser-0.8.0'
$app_bat = Join-Path $app_home 'bin/jreleaser.bat'

Install-ChocolateyZipPackage `
    -PackageName 'jreleaser' `
    -Url 'https://github.com/jreleaser/jreleaser/releases/download/v0.8.0/jreleaser-0.8.0.zip' `
    -Checksum 'be7d14d22d38e7a3fbd1a105f9d55d46afd773c9d8b0f983e6539692a042fca6' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'jreleaser' -Path $app_bat
