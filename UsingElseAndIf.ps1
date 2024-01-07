# The code showcases the use of if, elseif, and else

if (not (Test-Connection -ComputerName $servers[0] -Quiet -Count 1)) {
    Write-Error -Message "The server $servers[0] is not responding!" # The first if line checks to see if the first server in the array of servers is responding.
} elseif (servers[0] -eq $problemserver) {
    Write-Error -Message "The server $servers[0] does not have the right file!" # elseif says if you can connect we also check to see if we have the right file.
} else {
    Get-Content -Path "\\$servers[0]\c$\App_configuration.txt" # Finally we resolve the command if it matches both if and elseif checks.
}