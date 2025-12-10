# RunnerUpdateRequest

Request object for updating a runner

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **string** | the Runner name | [optional] [default to undefined]
**description** | **string** | the Runner description | [optional] [default to undefined]
**tags** | **Array&lt;string&gt;** | the list of tags | [optional] [default to undefined]
**runTemplateId** | **string** | the Solution Run Template Id associated with this Runner | [optional] [default to undefined]
**datasetList** | **Array&lt;string&gt;** | the list of Dataset Id associated to this Runner Run Template | [optional] [default to undefined]
**runSizing** | [**RunnerResourceSizing**](RunnerResourceSizing.md) | definition of resources needed for the runner run | [optional] [default to undefined]
**parametersValues** | [**Array&lt;RunnerRunTemplateParameterValue&gt;**](RunnerRunTemplateParameterValue.md) | the list of Solution Run Template parameters values | [optional] [default to undefined]
**additionalData** | **{ [key: string]: any; }** | Free form additional data | [optional] [default to undefined]
**solutionName** | **string** | the Solution name | [optional] [default to undefined]
**runTemplateName** | **string** | the Solution Run Template name associated with this Runner | [optional] [default to undefined]

## Example

```typescript
import { RunnerUpdateRequest } from '@cosmotech/api-ts';

const instance: RunnerUpdateRequest = {
    name,
    description,
    tags,
    runTemplateId,
    datasetList,
    runSizing,
    parametersValues,
    additionalData,
    solutionName,
    runTemplateName,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
