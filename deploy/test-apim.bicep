
@description('Generated from /subscriptions/1ee50a1b-d345-4f27-b715-12e9b1e5cc79/resourceGroups/apim-test/providers/Microsoft.ApiManagement/service/jake-test-apim')
resource jaketestapim 'Microsoft.ApiManagement/service@2021-12-01-preview' = {
  name: 'jake-test-apim'
  tags: {
  }
  location: 'West US'
  properties: {
    publisherEmail: 'vanhyningj@outlook.com'
    publisherName: 'Jake-Test-APIM'
    notificationSenderEmail: 'apimgmt-noreply@mail.windowsazure.com'
    hostnameConfigurations: [
      {
        type: 'Proxy'
        hostName: 'jake-test-apim.azure-api.net'
        negotiateClientCertificate: false
        defaultSslBinding: true
        certificateSource: 'BuiltIn'
      }
    ]
    customProperties: {
      'Microsoft.WindowsAzure.ApiManagement.Gateway.Security.Protocols.Tls10': 'False'
      'Microsoft.WindowsAzure.ApiManagement.Gateway.Security.Protocols.Tls11': 'False'
      'Microsoft.WindowsAzure.ApiManagement.Gateway.Security.Protocols.Ssl30': 'False'
      'Microsoft.WindowsAzure.ApiManagement.Gateway.Security.Ciphers.TripleDes168': 'False'
      'Microsoft.WindowsAzure.ApiManagement.Gateway.Security.Backend.Protocols.Tls10': 'False'
      'Microsoft.WindowsAzure.ApiManagement.Gateway.Security.Backend.Protocols.Tls11': 'False'
      'Microsoft.WindowsAzure.ApiManagement.Gateway.Security.Backend.Protocols.Ssl30': 'False'
      'Microsoft.WindowsAzure.ApiManagement.Gateway.Protocols.Server.Http2': 'False'
    }
    virtualNetworkType: 'None'
    disableGateway: false
    apiVersionConstraint: {
    }
    publicNetworkAccess: 'Enabled'
  }
  sku: {
    name: 'Developer'
    capacity: 1
  }
}
