function Install-Software { # Assigns Install-Software as a function and defines params below
     param( # Calls parameter
        [Paramater(Mandatory)] # Must provide this paramater when calling function
        [ValidateSet('1','2')] # Assigns possible values
        [string]$Version,      # Defines property type string to variable Version

        [Paramater(Mandatory)] # Must provide this paramater when calling function
        [string]$ComputerName  # Defines property type string to variable Version
    )
    Write-Host 'The following software version is $Version on the workstation $ComputerName' # calls string
}

Install-Software -Version 2 -ComputerName "WebServer" 
# Expected output is The following software version is 2 on the workstation WebServer