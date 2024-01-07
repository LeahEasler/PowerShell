$servers = @('SVR1', 'SVR2', 'SVR3', 'SVR4', 'SVR5') #Lists server variables
ForEach-Object -InputObject $servers -Process {
    Get-Content -Path "\\$_\c$\App_configuration.txt"
}