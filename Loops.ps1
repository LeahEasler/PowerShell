$servers = @('SVR1', 'SVR2', 'SVR3', 'SVR4', 'SVR5') #Lists server variables

foreach ($server in $servers) { # Uses a lopp to check each server and apply to path
    Get-Content -Path "\\$server\c$\App_configuration.txt"
}

foreach ($server in $servers) { 
    $server = "new $server"
}
$servers