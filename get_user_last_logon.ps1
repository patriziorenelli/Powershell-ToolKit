# Get the last logon of a user with a given name
Get-ADUser -filter "Name -eq 'xxxx'" -Properties "LastLogonDate" | select name, LastLogonDate