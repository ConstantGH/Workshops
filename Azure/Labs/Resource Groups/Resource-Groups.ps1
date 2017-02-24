#Login to Azure Account
Login-AzureRmAccount

Get-AzureRmSubscription
Select-AzureRmSubscription -SubscriptionId 58ab0f56-3b9e-4ce9-bc15-7fcc4b98012c

$locName = "West Europe" #Azure datacenter location
$rgName = "testrg1" #resource group name

#View resource groups
Get-AzureRmResourceGroup

#Create resource group
New-AzureRmResourceGroup -Name $rgName -Location $locName

#View resource providers
Get-AzureRmResourceProvider -Location $locName -ListAvailable | Select ProviderNameSpace,RegistrationState | Sort ProviderNameSpace
Get-AzureRmResourceProvider -Location $locName | Register-AzureRmResourceProvider

#Delete resource groups
Remove-AzureRmResourceGroup -Name $rgName -Force
