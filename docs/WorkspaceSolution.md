# WorkspaceSolution

The Workspace Solution configuration

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**solutionId** | **string** | The Solution Id attached to this workspace | [default to undefined]
**datasetId** | **string** | The Dataset Id attached to this workspace. This dataset will be used to store default values for Solution parameters with file\&#39;s varType.  | [optional] [default to undefined]
**defaultParameterValues** | **{ [key: string]: string; }** | A map of parameterId/value to set default values for Solution parameters with simple varType (int, string, ...) | [optional] [default to undefined]

## Example

```typescript
import { WorkspaceSolution } from '@cosmotech/api-ts';

const instance: WorkspaceSolution = {
    solutionId,
    datasetId,
    defaultParameterValues,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
