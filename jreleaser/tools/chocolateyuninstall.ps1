# Generated with JReleaser 1.15.0-SNAPSHOT at 2024-10-31T08:59:56.877249853Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'jreleaser-1.15.0'
$app_exe = Join-Path $app_home 'bin/jreleaser.bat'

Uninstall-BinFile -Name 'jreleaser' -Path $app_exe
