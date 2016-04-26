## =====================================================================
## Title       : 
## Description : 
## Author      : 
## Date        : 
## Input       : 
## 				 -verbose 
## Output      : 
## Usage       : PS> .\Start-SQLServerService -service MSSQLServer -verbose -debug
## Notes       :
## Tag         :
## Change Log  :
##   10/20/2015 - Created Script
## =====================================================================

# Don't forget to execute 'Set-ExecutionPolicy RemoteSigned' if running PS on a new computer

<#
.SYNOPSIS
   <A brief description of the script>
.DESCRIPTION
   <A detailed description of the script>
.PARAMETER <paramName>
   <Description of script parameter>
.EXAMPLE
   <An example of using the script>
#>
 
param
(
#	[switch]$verbose = $true
)

function main()
{
	if ($verbose) {$VerbosePreference = "Continue"}

	Write-Verbose "Writing Hello World!"
	"Hello, World!"

	
}

main
