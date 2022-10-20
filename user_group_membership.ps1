# Gets the data of the participants of a group indicated in the variable $group and saves their data in the file $outputfile
$group = "xxxx"
$user = Get-ADGroupMember -Identity $group | Select-Object -ExpandProperty name
$outputfile = "Path\users_$group.txt"
"User ID, Name, Surname" >> $outputfile

foreach($ut in $user){
    if ($ut.Contains(' ')){
         $ut >> $output
    }else{
        $user = Get-ADUser -Identity $ut 
        $name = $user.GivenName
        $surname = $user.Surname
        $enable = $user.Enabled
        "$ut, $name, $surname, $enable" >> $outputfile
    }
} 
