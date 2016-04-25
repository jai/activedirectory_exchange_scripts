$OABs = Get-OfflineAddressBook
$Count = 0
Foreach($Oab in $OABs){
 Write-Host $Count "." $Oab.Name
 $Count++
}
$Choice = Read-Host "Please choose"
Get-MailboxDatabase | Set-MailboxDatabase -OfflineAddressBook $Oabs[$Choice]