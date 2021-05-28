Set-ExecutionPolicy -ExecutionPolicy Unrestricted -Scope Process -Force
$ErrorActionPreference = "stop"

# NAVAPP STORAGE
. (Join-Path $PSScriptRoot "private/Get-AzureStorage.ps1")
. (Join-Path $PSScriptRoot "private/Get-AzureStorage1.ps1")
