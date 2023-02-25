@echo off  
set p=%1
:loop
if exist a.exe (
	del /Q *a.exe*
)
for %%i in (%p%) do echo %%~ai|find "a">nul || goto :loop
::
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
attrib -a %p%
goto :loop