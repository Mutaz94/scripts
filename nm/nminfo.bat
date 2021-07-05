@echo off

rem This program will facilate nmhelp functionality in Windows OS without the need to move to nm75g65/nmhelp folder
rem This should be move DIR with PATH access
rem Usage: $ nminfo keyword 
rem keyword can be anything e.g., ADVAN or SIML


echo ---------------------------------
echo  NONMEM 7.5 help guide
echo ---------------------------------



set cdir=%cd%
cd c:\nm75g64\help
echo on 

nmhelp.exe %*

@echo off 
cd %cdir%
echo on 
