@echo off

rem This program will facilate nmhelp functionality in Windows OS without the need to move to nm75g65/nmhelp folder
rem This should be move DIR with PATH access

set cdir = %cd%
echo on 

nmhelp.exe %*

@echo off 
cd %cdir%
echo on 
