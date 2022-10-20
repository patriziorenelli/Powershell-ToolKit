# Gets the groups that a single user is a part of -> You must replace the Identity field with the user to search for 
Get-ADPrincipalGroupMembership -Identity 'xxxxx'  | Select-Object -ExpandProperty name
