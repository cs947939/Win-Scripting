rem deprovision a lab machine for a new task
uwfmgr filter disable 
echo this will wipe the lab disk on the VM. if you don't wish to wipe the VM please run the unfreze  script.
pause
C:\Scripts\psexec.exe -s -i "Powershell -ExecutionPolicy Bypass -File"C:\Scripts\wipelabdrive.ps1""
