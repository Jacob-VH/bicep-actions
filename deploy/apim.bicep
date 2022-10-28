@description('The name of the APIM instance')
param apimName string
param apimLocation string
param publisherName string
param publisherEmail string

resource jakeTestApim 'Microsoft.ApiManagement/service@2021-12-01-preview' = {
  name: apimName
  location:apimLocation
  sku: {
    name: 'Developer'
    capacity: 1
  }
  properties: {
    publisherEmail: publisherEmail
    publisherName: publisherName
  }
}
