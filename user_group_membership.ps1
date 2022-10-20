<#Saves the data relating to the users in the group indicated in the $ group variable. Save the collected data in the output file $outputfile #>
$group = "xxxx"
$users = Get-ADGroupMember -Identity $gruppo | Select-Object -ExpandProperty name
$outputfile = "Path\users_$gruppo.txt"
"User ID ,Name, Surname" >> $outputfile

foreach($u in $users){

    $us = Get-ADUser -Identity $u
    $name = $us.GivenName
    $surname = $us.Surname
    $enable = $us.Enabled
    "$u,$name,$surname, $enable" >> $outputfile
}