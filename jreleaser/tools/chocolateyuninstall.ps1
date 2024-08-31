# Generated with JReleaser 1.14.0-SNAPSHOT at 2024-08-31T07:00:25.327300349Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'jreleaser-1.14.0'
$app_exe = Join-Path $app_home 'bin/jreleaser.bat'

Uninstall-BinFile -Name 'jreleaser' -Path $app_exe
