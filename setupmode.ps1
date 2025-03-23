param (
    [string]$ScriptToRun = "C:\setup.bat"
)


$regpath = "HKLM:\SYSTEM\Setup"
Set-ItemProperty -Path $regpath -Name cmdline -Value "cmd.exe /C $ScriptToRun"
Set-ItemProperty -Path $regpath -Name OOBEInProgress -Value 1
Set-ItemProperty -Path $regpath -Name SetupSupported -Value 1
Set-ItemProperty -Path $regpath -Name SetupPhase -Value 4
Set-ItemProperty -Path $regpath -Name SetupType -Value 2
