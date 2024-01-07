if (not (Test-Connection -ComputerName $servers[0] -Quiet -Count 1)) {
    Write-Error -Message "The server $servers[0] is not responding!"
} elseif (servers[0] -eq $problemserver) {
    Write-Error -Message "The server $servers[0] does not have the right file!"
} else {
    Get-Content -Path "\\$servers[0]\c$\App_configuration.txt"