net user erase /add
net start workstation
net localgroup Administrators erase /add
net user ls /active:no
net user Administrator /active:no
net user UWF-Admin /active:no
Set-ItemProperty -Path "HKLM:\Software\Microsoft\Windows\CurrentVersion\Run" `
                 -Name "TempSetup" `
                 -Value "powershell.exe -ExecutionPolicy Bypass -File C:\scripts\runme.ps1"
Powershell -ExecutionPolicy Bypass -File "C:\undosetup.ps1"
shutdown -r -f -t 0
