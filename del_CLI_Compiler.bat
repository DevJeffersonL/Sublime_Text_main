@echo off
set FOLDER=C:\CLI_Compiler
if exist "%FOLDER%" (
  rmdir /s /q "%FOLDER%"
)