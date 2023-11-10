$regpath = "HKLM:\SYSTEM\Setup"
Set-ItemProperty -Path $regpath -Name cmdline -Value ""
Set-ItemProperty -Path $regpath -Name OOBEInProgress -Value 0
Set-ItemProperty -Path $regpath -Name SetupSupported -Value 0
Set-ItemProperty -Path $regpath -Name SetupPhase -Value 0
Set-ItemProperty -Path $regpath -Name SetupType -Value 0