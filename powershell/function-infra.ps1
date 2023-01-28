## Variables
$location = 'westus'
$appName = 'jdvhrockliberty'
$funcAppName = 'func-' + $appName
$rgName = 'rg-' + $appName + '-cus'
$kvName = 'kv-' + $appName

## Deploy resources. Requires Bicep and parameters file
New-AzDeployment -Location $location -TemplateFile '.\deploy\function-app-infra.bicep' -TemplateParameterFile '.\deploy\function-app-infra.parameters.json'

## Get Publish Profile
Get-AzWebAppPublishingProfile -ResourceGroupName $rgName -Name $funcAppName -Format "Ftp" -OutputFile "./outputfile.publish-profile.xml"

## Get FunctionApp Principal ID
$functionApp = Get-AzFunctionApp -ResourceGroupName $rgName -Name $funcAppName
$appOID = $functionApp.IdentityPrincipalId

## Update keyvault to app function app
Set-AzKeyVaultAccessPolicy -VaultName $kvName -ResourceGroupName $rgName -ObjectId $appOID -PermissionsToSecrets get,list -PermissionsToKeys get,list

## Deploy zip to functionapp
Publish-AzWebapp -ResourceGroupName $rgName -Name $funcAppName -ArchivePath './parameters/function.zip'