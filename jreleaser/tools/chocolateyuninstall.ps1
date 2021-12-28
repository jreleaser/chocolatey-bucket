# Generated with JReleaser 0.10.0-SNAPSHOT at 2021-12-28T14:52:05.57129Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'jreleaser-0.10.0'
$app_bat = Join-Path $app_home 'bin/jreleaser.bat'

Uninstall-BinFile -Name 'jreleaser' -Path $app_bat
