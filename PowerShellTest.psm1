<#
	My Function
#>
function PrivateFunction1 {
	return "private function"
}
function TestFunction1 {
	echo $PSScriptRoot
	return "it returns"
}

function TestPublicFunction2 {
	echo "public 2"
	return "public 2"
}

Export-ModuleMember -Function TestFunction1, TestPublicFunction2