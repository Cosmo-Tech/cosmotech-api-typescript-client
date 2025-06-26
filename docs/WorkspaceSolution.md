# WorkspaceSolution

The Workspace Solution configuration

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**solutionId** | **string** | The Solution Id attached to this workspace | [default to undefined]
**runTemplateFilter** | **Array&lt;string&gt;** | The list of Solution Run Template Id to filter | [optional] [default to undefined]
**defaultRunTemplateDataset** | **{ [key: string]: any; }** | A map of RunTemplateId/DatasetId to set a default dataset for a Run Template | [optional] [default to undefined]

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
