echo locking vm harddrive 
echo click any key to lock
pause
net user Administrator /active:yes
net user ls /active:yes
net user Computer /active:yes
uwfmgr filter enable
shutdown -r -f -t 10
