# Generated with JReleaser 1.0.0-SNAPSHOT at 2022-01-22T09:46:39.196814Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'jreleaser-1.0.0-M1'
$app_bat = Join-Path $app_home 'bin/jreleaser.bat'

Uninstall-BinFile -Name 'jreleaser' -Path $app_bat
