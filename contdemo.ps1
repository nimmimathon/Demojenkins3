﻿Import-Module BcContainerHelper
$path = '.\tmp'
$additionalParameters = '-v $path:C:\Run\tmp'
$containerName = 'testnavs345'
$password = 'P@ssw0rd'
$securePassword = ConvertTo-SecureString -String $password -AsPlainText -Force
$credential = New-Object pscredential 'admin', $securePassword
$auth = 'UserPassword'
$artifactUrl = Get-NavArtifactUrl -nav 2018 -cu 18 -country de
$licenseFile = '.\DevLicense2.flf'
New-BcContainer `
    -accept_eula `
    -containerName $containerName `
    -credential $credential `
    -auth $auth `
    -artifactUrl $artifactUrl `
    -imageName 'navisionimg1' `
    -licenseFile $licenseFile `
    -memoryLimit 4G `
    -additionalParameters $additionalParameters `
    -updateHosts

Import-DeltasToNavContainer -containerName $containerName -deltaFolder '.\tmp'
