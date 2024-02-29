# Generated with JReleaser 1.11.0-SNAPSHOT at 2024-02-29T12:31:31.529400801Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'jreleaser-1.11.0'
$app_exe = Join-Path $app_home 'bin/jreleaser.bat'

Uninstall-BinFile -Name 'jreleaser' -Path $app_exe
