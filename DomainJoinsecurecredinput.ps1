$creds = Get-Credential -Message "Enter Username and Password to join the domain"
$dom = "larrymcdummy.tk"
Add-Computer -DomainName $dom -Credential $creds -Force
