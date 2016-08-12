#
# This is a PowerShell Unit Test file.
# You need a unit test framework such as Pester to run PowerShell Unit tests. 
# You can download Pester from http://go.microsoft.com/fwlink/?LinkID=534084
#
$moduleName = "$PSScriptRoot\PowerShellTest.psm1"
Import-Module $moduleName
try
{
	Describe "TestFunction1" {
		Context "Function Exists" {
		
			It "Should Return" {
				$result  = TestFunction1
				$result[1] | Should Be "it returns"
			}
		}
	}

	Describe "TestPublicFunction2" {
		Context "Execute and return value" {
			It "Should verify something" {
				TestPublicFunction2 | Should Be "public 2"
			}
		}	
	}
}
finally
{
	Remove-Module -Name PowerShellTest
}
