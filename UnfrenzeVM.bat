echo executing sandbox mode
echo acconuts disablement. The ls account, normaluser account, Administarator account will BE DISBALED. 
echo only account that is usable will be UWF-Admin
net user ls /active:no
net user Administrator /active:no
net user normaluser /active:no
uwfmgr filter disable && uwfmgr filter restart 
