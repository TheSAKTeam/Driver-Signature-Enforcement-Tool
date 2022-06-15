@echo off
color 0a
title Driver Tool
set ver=1.0 
set dev=The The SAK Team
set Fastmode=1
:start
cls
echo              #########################################
echo              # 1.Disable Driver Signature Enforcement#
echo              #                                       #
echo              #                                       #
echo              # 3.Readme                              #
echo              #                                       #
echo              #                                       #
echo              # 2.Enable Driver Signature Enforcement #
echo              #########################################
echo                        Made by %dev%   %ver%
set /p ans=
if %ans% ==1 goto dis
if %ans% ==2 goto en
if %ans% ==3 goto readme
(else
cls
echo                  Wrong Input!
echo                 ------------
echo           Press any key to Continue
pause>nul
goto start)

:dis
cls
@bcdedit -set loadoptions DISABLE_INTEGRITY_CHECKS  Press ENTER
@bcdedit -set TESTSIGNING ON
echo       Done! Press Any Key to Continue
echo        #############################
echo          Reboot to Take Effect
pause>nul
exit
:en
cls
@bcdedit -set loadoptions ENABLE_INTEGRITY_CHECKS  Press ENTER
@bcdedit -set TESTSIGNING OFF
echo       Done! Press Any Key to Continue
echo        #############################
echo          Reboot to Take Effect
pause>nul
exit

:readme
cls
Readme.txt
exit


