targetScope = 'subscription'

param location string = 'westus'
param appName string
param env string

resource resourceGroup 'Microsoft.Resources/resourceGroups@2021-04-01' = {
  name: 'rg-${appName}-cus'
  location: location
}

module functionApp 'function.bicep' = {
  name: appName
  scope: resourceGroup
  params: {
    appName: appName
    env: env
    location: location
  }
}
