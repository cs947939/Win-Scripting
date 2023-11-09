$regpath = "HKLM:\SYSTEM\Setup"
Set-ItemProperty -Path $regpath -Name cmdline -Value "cmd.exe /C C:\setup.bat"
Set-ItemProperty -Path $regpath -Name OOBEInProgress -Value 1
Set-ItemProperty -Path $regpath -Name SetupSupported -Value 1
Set-ItemProperty -Path $regpath -Name SetupPhase -Value 4
