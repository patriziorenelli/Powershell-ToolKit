$group = "xxxx"
$user = Get-ADGroupMember -Identity $group | Select-Object -ExpandProperty name
$outputfile = "Path\users_$group.txt"


"User ID ,Name, Surname" >> $outputfile

# Ottiene i partecipanti  (con codice, nome, cognome e se attivo) di un determinato gruppo
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