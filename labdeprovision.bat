rem deprovision a lab machine for a new task
uwfmgr filter disable 
echo rebooting into setup mode
Powershell -ExecutionPolicy Bypass -File "Setupmode.ps1"
shutdown -r -f -t 300