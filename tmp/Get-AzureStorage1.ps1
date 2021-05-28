function Get-AzureStorage1 {
    param(
    )  
    process {
        Set-ExecutionPolicy -ExecutionPolicy Unrestricted -Scope Process -Force
	    $AzureStr = '\\amsnavappconf.file.core.windows.net\navappfile\'
        return $AzureStr
    }
}
Export-ModuleMember -Function 'Get-AzureStorage1'
    