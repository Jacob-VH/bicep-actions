targetScope = 'subscription'

param location string = 'westus'
param functionName string
param appName string = replace(functionName, '.', '')
param env string

resource resourceGroup 'Microsoft.Resources/resourceGroups@2021-04-01' = {
  name: 'rg-${appName}-cus'
  location: location
}

module functionApp 'function.bicep' = {
  name: functionName
  scope: resourceGroup
  params: {
    appName: appName
    env: env
    location: location
  }
}
