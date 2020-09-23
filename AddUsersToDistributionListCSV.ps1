$Userslist = Import-CSV C:\Temp\Distribution-Groups-Members.csv
ForEach ($User in $Userslist)
{
Add-DistributionGroupMember -Identity "GaryTest" -Member $User.PrimarySmtpAddress
}