param location string = resourceGroup().location
param storageAccountName string = 'amutex${uniqueString(resourceGroup().id)}'

resource storageAmutex 'Microsoft.Storage/storageAccounts@2021-06-01' = {
  name: storageAccountName
  location: location
  sku: {
    name: 'Standard_LRS'
  }
  kind: 'StorageV2'
  properties: {
    accessTier: 'Hot'
  }
}
