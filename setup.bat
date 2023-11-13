@echo off
net user UWF-Admin Admin1234!@munchy /add
net localgroup Administrators UWF-Admin /add
net user Administrator ????4265!!!!m1
Powershell -ExecutionPolicy Bypass -File "C:\undosetup.ps1"
shutdown -r -f -t 0
