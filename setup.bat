@echo off
uwfmgr filter enable
RD C:\Users /S /Q
reg add "HKEY_LOCAL_MACHINE\SYSTEM\setup" /v CmdLine /d /f /t REG_DWORD
