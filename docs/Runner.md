# Runner

a Runner with complete information

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **string** | the Runner unique identifier | [readonly] [default to undefined]
**name** | **string** | the Runner name | [default to undefined]
**description** | **string** | the Runner description | [optional] [default to undefined]
**tags** | **Array&lt;string&gt;** | the list of tags | [optional] [default to undefined]
**parentId** | **string** | the Runner parent id | [optional] [default to undefined]
**createInfo** | [**RunnerEditInfo**](RunnerEditInfo.md) | The details of the Runner creation | [default to undefined]
**updateInfo** | [**RunnerEditInfo**](RunnerEditInfo.md) | The details of the Runner last update | [default to undefined]
**rootId** | **string** | the runner root id | [optional] [readonly] [default to undefined]
**solutionId** | **string** | the Solution Id associated with this Runner | [readonly] [default to undefined]
**runTemplateId** | **string** | the Solution Run Template Id associated with this Runner | [default to undefined]
**organizationId** | **string** | the associated Organization Id | [readonly] [default to undefined]
**workspaceId** | **string** | the associated Workspace Id | [readonly] [default to undefined]
**ownerName** | **string** | the name of the owner | [readonly] [default to undefined]
**solutionName** | **string** | the Solution name | [optional] [readonly] [default to undefined]
**runTemplateName** | **string** | the Solution Run Template name associated with this Runner | [optional] [readonly] [default to undefined]
**datasetList** | **Array&lt;string&gt;** | the list of Dataset Id associated to this Runner Run Template | [default to undefined]
**runSizing** | [**RunnerResourceSizing**](RunnerResourceSizing.md) |  | [optional] [default to undefined]
**parametersValues** | [**Array&lt;RunnerRunTemplateParameterValue&gt;**](RunnerRunTemplateParameterValue.md) | the list of Solution Run Template parameters values | [default to undefined]
**lastRunInfo** | [**LastRunInfo**](LastRunInfo.md) |  | [default to undefined]
**validationStatus** | [**RunnerValidationStatus**](RunnerValidationStatus.md) |  | [default to undefined]
**security** | [**RunnerSecurity**](RunnerSecurity.md) |  | [default to undefined]

## Example

```typescript
import { Runner } from '@cosmotech/api-ts';

const instance: Runner = {
    id,
    name,
    description,
    tags,
    parentId,
    createInfo,
    updateInfo,
    rootId,
    solutionId,
    runTemplateId,
    organizationId,
    workspaceId,
    ownerName,
    solutionName,
    runTemplateName,
    datasetList,
    runSizing,
    parametersValues,
    lastRunInfo,
    validationStatus,
    security,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
