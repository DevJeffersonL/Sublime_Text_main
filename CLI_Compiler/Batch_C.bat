@echo off
set f=%1
:loop
for %%i in (%f%) do (
    echo %%~ai | find "a">nul || goto :loop
    attrib %%i | find "h">nul || attrib -a -h %%i
)
cls
call %f%
goto :loop