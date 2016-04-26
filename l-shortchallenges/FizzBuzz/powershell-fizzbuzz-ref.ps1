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
    [switch]$verbose = $true
)

function main()
{
	if ($verbose) {$VerbosePreference = "Continue"}

	Write-Verbose "Straightforward, looping"
    for ($i = 1; $i -le 100; $i++) {
        if ($i % 15 -eq 0) {
            "FizzBuzz"
        } elseif ($i % 5 -eq 0) {
            "Buzz"
        } elseif ($i % 3 -eq 0) {
            "Fizz"
        } else {
            $i
        }
    }

    Write-Verbose "Pipeline, Switch"
    $txt=$null
    1..100 | ForEach-Object {
        switch ($_) {
            { $_ % 3 -eq 0 }  { $txt+="Fizz" }
            { $_ % 5 -eq 0 }  { $txt+="Buzz" }
            $_                { if($txt) { $txt } else { $_ }; $txt=$null }
        }
    }
    
    Write-Verbose "Concatenation"
    1..100 | ForEach-Object {
        $s = ''
        if ($_ % 3 -eq 0) { $s += "Fizz" }
        if ($_ % 5 -eq 0) { $s += "Buzz" }
        if (-not $s) { $s = $_ }
        $s
    }
    
}
	

main
