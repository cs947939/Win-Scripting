RD C:\users\Administrator /S /Q
Powershell -ExecutionPolicy Bypass -File "C:\undosetup.ps1"
net user normaluser Munchy /add
net user UWF-Admin /delete
net localgroup Administrators normaluser /add
net user Administrator munhcyadmin12!

