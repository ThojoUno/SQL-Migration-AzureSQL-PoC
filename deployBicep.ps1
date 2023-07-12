
$tenantId = '0c557776-7f20-4c23-8c8e-53bebcc62ae6'

$subscriptionId = '0116efb4-24cc-4d32-b9c8-3912ef0869b8'
$location = 'eastus'
$resourceGroup = "rg-$location-sqlmigrationpoc"
$tags = @("Environment=Lab" ,"Business Unit=Cloud Enablement" ,"Expiry Date=6/31/2023","Owner=Joe Thompson","DeployedBy=Lunavi")

az login --tenant $tenantId

az account set --subscription $subscriptionId

az group create --location $location --name $resourceGroup --tags $tags

az deployment group create --resource-group $resourceGroup --template-file ./AzureSQLDB/deploy/template-latest.bicep
