targetScope = 'subscription'

param location string = 'westus'

resource resourceGroup 'Microsoft.Resources/resourceGroups@2022-09-01' = {
  name: 'rg-powershell'
  location: location
}
