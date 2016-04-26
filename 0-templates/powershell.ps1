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
##   4/1/2009 - Added input prompts and write-verbose statements
## =====================================================================
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
	[switch]$verbose = $true,
)

function main()
{
	if ($verbose) {$VerbosePreference = "Continue"}

	Write-Verbose ""

	
}

main
