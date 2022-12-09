targetScope = 'subscription'

param location string = 'westus'
param functionName string
param env string

resource resourceGroup 'Microsoft.Resources/resourceGroups@2021-04-01' = {
  name: 'rg-${functionName}-cus'
  location: location
}

module functionApp 'function.bicep' = {
  name: functionName
  scope: resourceGroup
  params: {
    appName: functionName
    env: env
    location: location
  }
}
