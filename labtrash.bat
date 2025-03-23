rem deprovision a lab machine for a new task
uwfmgr filter disable 
echo this will wipe the lab disk on the VM. if you don't wish to wipe the VM please run the unfreze  script.
pause
Powershell -ExecutionPolicy Bypass -File "setupmode.ps1" -ScriptToRun "C:\Scripts\wipelabdrive.bat"
shutdown -r -f -t 0
