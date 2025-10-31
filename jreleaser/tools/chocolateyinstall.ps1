# Generated with JReleaser 1.21.0-SNAPSHOT at 2025-10-31T09:02:17.092272113Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'jreleaser-1.21.0'
$app_exe = Join-Path $app_home 'bin/jreleaser.bat'

Install-ChocolateyZipPackage `
    -PackageName 'jreleaser' `
    -Url 'https://github.com/jreleaser/jreleaser/releases/download/v1.21.0/jreleaser-1.21.0.zip' `
    -Checksum '5d126a7e7f8e8b973832fae83aa3938fbfef4ae17432573be410691c96a4f073' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'jreleaser' -Path $app_exe
