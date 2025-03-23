net user erase /add
net start workstation
net localgroup Administrators erase /add
net user ls /active:no
net user Administrator /active:no
net user UWF-Admin /active:no
Powershell -ExecutionPolicy Bypass -File "C:\undosetup.ps1"
