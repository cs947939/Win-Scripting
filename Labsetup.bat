@echo off
echo Enabling UWF
uwfmgr filter enable
rem Adding exceptions 

rem Domain Join
Powerhsell -ExecutionPolicy Bypass -File "DomainJoinsecurecredinput.ps1
echo Domain Join Completed
rem boot into setup mode

rem Rebooting
echo restarting
shutdown -r -f -t 120
