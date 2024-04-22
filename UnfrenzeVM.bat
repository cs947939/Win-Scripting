
echo acconuts disablement. The ls account, computer account, Administarator account will BE DISBALED. 
echo only account that is usable will be UWF-Admin. The password is: Admin@munchy
echo press any key to acknowledge these warinings
pause
net user ls /active:no
net user Administrator /active:no
net user Computer /active:no
uwfmgr filter disable && uwfmgr filter restart 
