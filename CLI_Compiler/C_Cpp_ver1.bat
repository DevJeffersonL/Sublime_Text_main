@echo off
set p=%1
:loop 
cls
if "%p:~-2%" == ".c" (
	gcc %p%
	if exist a.exe (
		a.exe  
	)
) else if "%p:~-4%" == ".cpp" (
	g++ %p%
	if exist a.exe (
		a.exe 
	)
)
::
if exist a.exe (
	del /Q *a.exe*
)
::
pause 
goto loop