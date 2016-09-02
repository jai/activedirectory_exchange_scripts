	foreach ($group in Get-DistributionGroup) 
	{ 
		get-distributiongroupmember $group | 
		sort displayname | 
		ft @{expression={$_.displayname};Label="$group - " + $group.primarysmtpaddress} | 
		Out-File c:\IT\DistributionListMembers.txt -append
	}