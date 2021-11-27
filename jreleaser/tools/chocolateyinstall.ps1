$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'jreleaser-0.9.0'
$app_bat = Join-Path $app_home 'bin/jreleaser.bat'

Install-ChocolateyZipPackage `
    -PackageName 'jreleaser' `
    -Url 'https://github.com/jreleaser/jreleaser/releases/download/v0.9.0/jreleaser-0.9.0.zip' `
    -Checksum '2a0e82f59400bfa0e87ed42ca10a824ce830d856df28a944e1ae1467cdad18fa' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'jreleaser' -Path $app_bat
