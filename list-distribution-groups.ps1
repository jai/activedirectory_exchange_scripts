foreach ($group in Get-DistributionGroup) 
	{ 
		get-distributiongroupmember $group | sort displayname | ft @{expression={$_.displayname};Label=”$group”} | Out-File c:\temp\DistributionListMembers.txt -append
	}