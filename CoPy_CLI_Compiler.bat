@echo off 
::-----------------------------------
if exist "C:\CLI_Compiler" (
	rmdir /s /q "C:\CLI_Compiler" 
)
::-----------------------------------
set SOURCE_FOLDER=%cd%\CLI_Compiler
set DESTINATION_FOLDER=C:\
xcopy /E /I /Y "%SOURCE_FOLDER%" "%DESTINATION_FOLDER%\CLI_Compiler"
exit 