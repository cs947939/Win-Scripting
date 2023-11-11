@echo off
echo upgrade to enterprise
slmgr /ipk NPPR9-FWDCX-D2C8J-H872K-2YT43
echo install UWF
dism /enable-feature /featureName:Client-UnifiedWriteFilter
rem Init UWF overlay
uwfmgr overlay set-type Disk
uwfmgr overlay set-size 3048
uwfmgr overlay set-warningthreshold 1024
uwfmgr overlay set-criticalthreshold 2048
rem Adding exceptions 
uwfmgr registry add-exclusion "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Time Zones"
uwfmgr registry add-exclusion "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\TimeZoneInformation"
uwfmgr registry add-exclusion "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\BITS\StateIndex"
uwfmgr registry add-exclusion "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\Wireless\GPTWirelessPolicy"
uwfmgr file add-exclusion %ALLUSERSPROFILE%\Microsoft\Network\Downloader


uwfmgr file add-exclusion C:\Windows\wlansvc\Policies
uwfmgr registry add-exclusion "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\wlansvc
uwfmgr file add-exclusion C:\ProgramData\Microsoft\wlansvc\Profiles\Interfaces
uwfmgr registry add-exclusion "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\Wlansvc
uwfmgr registry add-exclusion "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\WwanSvc

uwfmgr registry add-exclusion "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WiredL2\GP_Policy
uwfmgr file add-exclusion C:\Windows\dot2svc\Policies
uwfmgr registry add-exclusion "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\dot3svc
uwfmgr file add-exclusion C:\ProgramData\Microsoft\dot3svc\Profiles\Interfaces
uwfmgr registry add-exclusion "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\dot3svc
uwfmgr file add-exclusion C:\Users
uwfmgr file add-exclusion "C:\Program Files\Windows Defender"
uwfmgr file add-exclusion "C:\ProgramData\Microsoft\Windows Defender"
uwfmgr file add-exclusion C:\Windows\WindowsUpdate.log
uwfmgr file add-exclusion C:\Windows\Temp\MpCmdRun.log
uwfmgr registry add-exclusion "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows Defender
uwfmgr file add-exclusion C:\Windows\Prefetch

rem Domain Join
Powershell -ExecutionPolicy Bypass -File "DomainJoinsecurecredinput.ps1"
echo Domain Join Completed
rem Apply Setup Exploit
echo preparing for step 2
echo Data loss waring close script to prevent data loss. Press any key to continue with data loss
pause
Powershell -ExecutionPolicy Bypass -File "setupmode.ps1"
xcopy setup.bat C:\setup.bat
xcopy undosetup.ps1 C:\undosetup.ps1
rem Rebooting
echo restarting you have more than 3 minutes to finish any tasks
shutdown -r -f -t 400
