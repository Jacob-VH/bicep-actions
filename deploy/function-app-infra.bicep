targetScope = 'subscription'

param location string = 'westus'
param name string = 'function-b'

resource resourceGroup 'Microsoft.Resources/resourceGroups@2021-04-01' = {
  name: 'function-b-rg'
  location: location
}

module functionApp 'function.bicep' = {
  name: 'asp'
  scope: resourceGroup
}
