@echo off
uwfmgr filter enable
RD C:\Users /S /Q
net user UWF-Admin Admin1234!@munchy /add
net localgroup Administrators UWF-Admin /add
net user Administrator ueww1234munchy111
Powershell -ExecutionPolicy Bypass -File "C:\undosetup.ps1"
shutdown -r -f -t 0
