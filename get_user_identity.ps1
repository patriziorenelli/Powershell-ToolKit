$user  = Get-Content "Path\user.txt"
$output = "Path\user.csv"

$out = foreach($u in $user){
    $us = Get-ADUser -Identity $u -Properties *
    $nome = $us.GivenName
    $cognome = $us.Surname
     
    $dati  =  [pscustomobject]@{
    'utente' = $u 
    'Name' = $nome
    'cognome' =  $cognome}
    $dati | Export-CSV $output -Append -NoTypeInformation -Force

}