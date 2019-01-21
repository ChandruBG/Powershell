$credentail=Get-Credential 
Connect-AzureRmAccount $credentail

#Set the particular subscription (Innvoationpublic)
Set-AzureRmContext -SubscriptionId fe80cdc3-c582-4a15-a816-3361eeb2e3b1

# Variables for common values
$resourceGroup = "292424"

# Create a resource group
New-AzureRmResourceGroup -Name $resourceGroup -Location $location

#Deploy the VM with exisiting VNet and Subnet in different Resource Group
New-AzureRmResourceGroupDeployment  -ResourceGroupName $resourceGroup  -TemplateFile "https://stgchk.blob.core.windows.net/stgcont/WindowsARMTemplate.json"
