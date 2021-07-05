@echo off

rem This program will facilate nmhelp functionality in Windows OS without the need to move to nm75g65/nmhelp folder
rem This should be move DIR with PATH access
echo 
echo ---------------------------------
echo  NONMEM help guide
echo ---------------------------------
echo  


set cdir=%cd%
cd c:\nm75g64\help
echo on 

nmhelp.exe %*

@echo off 
cd %cdir%
echo on 
