@echo off
rem Init UWF overlay
uwfmgr overlay set-type Disk
uwfmgr overlay set-size 3048
uwfmgr overlay set-warningthreshold 1024
uwfmgr overlay set-criticalthreshold 2048
rem Adding exceptions 

rem Domain Join
Powerhsell -ExecutionPolicy Bypass -File "DomainJoinsecurecredinput.ps1"
echo Domain Join Completed
rem Apply Setup Exploit
echo preparing for step 2
echo Data loss waring close script to prevent data loss. Press any key to continue with data loss
pause
Powershell -ExecutionPolicy Bypass -File "setupmode.ps1"
xcopy setup.bat C:\setup.bat
rem Rebooting
echo restarting you have more than 3 minutes to finish any tasks
shutdown -r -f -t 400
