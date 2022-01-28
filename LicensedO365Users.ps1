##Finds and exports Office 365 Licensed users to CSV file

Connect-MsolService -Credential $UserCredential
Get-MsolUser | Where-Object { $_.isLicensed -eq "TRUE" } | Export-Csv C:\temp\LicensedUsers.csv
