# Generated with JReleaser 1.25.0-SNAPSHOT at 2026-06-29T07:57:31.988946286Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'jreleaser-1.25.0'
$app_exe = Join-Path $app_home 'bin/jreleaser.bat'

Uninstall-BinFile -Name 'jreleaser' -Path $app_exe
