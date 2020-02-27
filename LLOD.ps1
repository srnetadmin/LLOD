$Users = New-Object System.Collections.ArrayList
$Group = Read-Host "Please enter the AD Group you want to review"
$Users = Get-ADGroupMember $Group |select name
    foreach ($User in $Users)
{        get-ADUser $User.name -Properties * | Select-Object Name, LastLogonDate
        }