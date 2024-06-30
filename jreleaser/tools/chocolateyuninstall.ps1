# Generated with JReleaser 1.14.0-SNAPSHOT at 2024-06-30T13:00:04.112802098Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'jreleaser-1.13.1'
$app_exe = Join-Path $app_home 'bin/jreleaser.bat'

Uninstall-BinFile -Name 'jreleaser' -Path $app_exe
