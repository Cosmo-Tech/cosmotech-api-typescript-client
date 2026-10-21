# WorkspaceSolution

the Workspace Solution configuration

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**solutionId** | **string** | the Solution Id attached to this workspace | [optional] [default to undefined]
**runTemplateFilter** | **Array&lt;string&gt;** | the list of Solution Run Template Id to filter | [optional] [default to undefined]
**defaultRunTemplateDataset** | **{ [key: string]: any; }** | a map of RunTemplateId/DatasetId to set a default dataset for a Run Template | [optional] [default to undefined]

## Example

```typescript
import { WorkspaceSolution } from '@cosmotech/api-ts';

const instance: WorkspaceSolution = {
    solutionId,
    runTemplateFilter,
    defaultRunTemplateDataset,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
