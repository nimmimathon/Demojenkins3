Set-ExecutionPolicy -ExecutionPolicy Unrestricted -Scope Process -Force
$ErrorActionPreference = "stop"

# NAVAPP STORAGE
. (Join-Path $PSScriptRoot "tmp/Get-AzureStorage.ps1")
. (Join-Path $PSScriptRoot "tmp/Get-AzureStorage1.ps1")
