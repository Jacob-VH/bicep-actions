targetScope = 'subscription'

param location string = 'westus'
param rgname string
param functionName string

resource resourceGroup 'Microsoft.Resources/resourceGroups@2021-04-01' = {
  name: rgname
  location: location
}

module functionApp 'function.bicep' = {
  name: functionName
  scope: resourceGroup
  params: {
    appName: functionName
  }
}
