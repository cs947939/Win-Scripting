@echo off
echo Enabling UWF
uwfmgr filter enable
rem Adding exceptions 

rem Domain Join

rem Rebooting
echo restarting
shutdown -r -f -t 120
