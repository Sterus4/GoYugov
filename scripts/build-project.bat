@echo off

set BUILD_DIR=..\build\app
set OUTPUT=%BUILD_DIR%\myapp.exe
set MAIN_FILE=main.go

if not exist "%BUILD_DIR%" (
    echo Creating folder: %BUILD_DIR%
    mkdir "%BUILD_DIR%"
)

echo Compiling project
go build -o "%OUTPUT%" "%MAIN_FILE%"