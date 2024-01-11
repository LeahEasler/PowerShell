Get-LocalUser |
    ForEach-Object { # Loop
        $user = $_ # Calls user variable
        return [PSCustomObject]@{ # Creating a custom object to include users and groups.
            "User"   = $user.Name
            "Groups" = Get-LocalGroup | Where-Object {  $user.SID -in ($_ | Get-LocalGroupMember | Select-Object -ExpandProperty "SID") } | Select-Object -ExpandProperty "Name"
        }
    } | Export-CSV Report2023.csv # Exports to CSV on C drive.
