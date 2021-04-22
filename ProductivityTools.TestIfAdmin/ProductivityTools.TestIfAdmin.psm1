
function Test-IfAdmin{

	[cmdletbinding()]
	param()
	
	Write-Verbose "Hello from Test-IfAdmin"
	[Security.Principal.WindowsPrincipal]$windowsIdentity= [Security.Principal.WindowsIdentity]::GetCurrent();
	Write-Verbose "Name of current user: $($windowsIdentity.Identity.Name)"
	[Security.Principal.WindowsBuiltInRole]$administrator=[Security.Principal.WindowsBuiltInRole] "Administrator"
	$admin=$windowsIdentity.IsInRole($administrator)

	Write-Verbose "Bye, Bye, from Test-IfAdmin"
	return $admin;
}

Export-ModuleMember Test-IfAdmin