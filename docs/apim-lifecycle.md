# APIM Lifecycle

## Code

### Infrastructure
The complete APIM instance and cofigs (with the exception of the APIs) will be stored in Bicep templates within the repo. Structure TBD

## Workflows

### Create/Update APIM
This workflow will update or deploy a new APIM in the specified environment from the Bicep template. 

Inputs:
- Environment

Variables:
- APIM name
- Resource group
- Subscription ID

Steps:
1. Get environment input
2. checkout Bicep and parameters file
3. Deploy template (If APIM exists it will update)


### Delete APIM
This workflow will remove an APIM from a given environment.

Inputs:
- Environment

Variables:
- Resource Group
- SUbscription ID

Steps:
1. Get environment input
2. Determine resource group name
3. Check if RG exists
    - True: Delete RG
    - False: Exit
