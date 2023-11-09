$regpath = "HKLM:\SYSTEM\Setup"
Set-ItemProperty -Path $regpath -Name cmdline -Value "cmd.exe /C C:\setup.bat"
