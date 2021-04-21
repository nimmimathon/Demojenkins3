Import-Module BcContainerHelper
$ptn =Get-Location | Select Path -ExpandProperty Path
$ptn
echo "above is the pwd"
$path = '.\tmp'
$additionalParameters = '-v C:\Users\nirmal\AppData\Local\Jenkins\.jenkins\workspace\demo2\tmp:C:\Run\tmp'
$containerName = 'testnavs466'
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
    -includeCSide `
    -doNotExportObjectsToText `
    -updateHosts


Start-Sleep -Seconds 30
Import-DeltasToNavContainer -containerName $containerName -deltaFolder 'C:\Users\nirmal\AppData\Local\Jenkins\.jenkins\workspace\demo2\tmp'
