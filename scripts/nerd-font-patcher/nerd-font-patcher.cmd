@echo off
if "%OS%"=="Windows_NT" setlocal

set DIRNAME=%~dp0

fontforge -script %DIRNAME%\font-patcher %*

if "%OS%"=="Windows_NT" endlocal
