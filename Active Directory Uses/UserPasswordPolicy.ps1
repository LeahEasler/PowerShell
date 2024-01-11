# The following powershell script was written in order to check users against our password policies.

Get-ADUser -Filter * -Properties PasswordLastSet, passwordneverexpires, lastLogon, whenCreated | Select-Object Name, PasswordLastSet, passwordneverexpires,  @{label='OU';expression={$_.DistinguishedName.Split(',')[1]}}, @{label='Last Logon';expression={[DateTime]::FromFileTime($_.LastLogon)}}, @{label='Created On';expression={{$_.whenCreated}}} | Export-Csv C:\AD-OU-PasswordReport-110123.csv

# This allows us to filter specific parameters inside of Active Directory
# Properties are PasswordLastSet, passwordneverexpires, lastLogon, and whenCreated
# We also want to grab what OU they are a part of so we have to label it
# We also need to use DateTime in order to get clear text for last logon and when created.
# Finally the file exports to a raw data CSV file which we can then import into a template