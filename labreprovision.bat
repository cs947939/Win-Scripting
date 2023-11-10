RD C:\users\UWF-Admin /S /Q
RD C:\users\Administrator /S /Q
Powershell -ExecutionPolicy Bypass -File "C:\undosetup.ps1"
net user normaluser Munchy /add
net localgroup Administrators normaluser /add
net user Administrator munhcyadmin12!
uwfmgr servicing enable
