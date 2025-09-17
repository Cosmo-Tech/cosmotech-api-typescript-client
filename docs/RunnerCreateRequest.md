# RunnerCreateRequest

Request object for creating a new runner

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **string** | the Runner name | [default to undefined]
**description** | **string** | the Runner description | [optional] [default to undefined]
**tags** | **Array&lt;string&gt;** | the list of tags | [optional] [default to undefined]
**solutionId** | **string** | the Solution Id associated with this Runner | [default to undefined]
**parentId** | **string** | the Runner parent id | [optional] [default to undefined]
**runTemplateId** | **string** | the Solution Run Template Id associated with this Runner | [default to undefined]
**datasetList** | **Array&lt;string&gt;** | the list of Dataset Id associated to this Runner Run Template | [optional] [default to undefined]
**runSizing** | [**RunnerResourceSizing**](RunnerResourceSizing.md) |  | [optional] [default to undefined]
**parametersValues** | [**Array&lt;RunnerRunTemplateParameterValue&gt;**](RunnerRunTemplateParameterValue.md) | the list of Solution Run Template parameters values | [optional] [default to undefined]
**ownerName** | **string** | the name of the owner | [default to undefined]
**solutionName** | **string** | the Solution name | [optional] [default to undefined]
**runTemplateName** | **string** | the Solution Run Template name associated with this Runner | [optional] [default to undefined]
**security** | [**RunnerSecurity**](RunnerSecurity.md) |  | [optional] [default to undefined]

## Example

```typescript
import { RunnerCreateRequest } from '@cosmotech/api-ts';

const instance: RunnerCreateRequest = {
    name,
    description,
    tags,
    solutionId,
    parentId,
    runTemplateId,
    datasetList,
    runSizing,
    parametersValues,
    ownerName,
    solutionName,
    runTemplateName,
    security,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
