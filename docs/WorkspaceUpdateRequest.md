# WorkspaceUpdateRequest

Request object for updating a workspace

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**key** | **string** | Technical key for resource name convention and version grouping. Must be unique | [optional] [default to undefined]
**name** | **string** | Workspace name | [optional] [default to undefined]
**description** | **string** | The Workspace description | [optional] [default to undefined]
**tags** | **Array&lt;string&gt;** | The list of tags | [optional] [default to undefined]
**solution** | [**WorkspaceSolution**](WorkspaceSolution.md) |  | [optional] [default to undefined]
**webApp** | [**WorkspaceWebApp**](WorkspaceWebApp.md) |  | [optional] [default to undefined]
**datasetCopy** | **boolean** | Activate the copy of dataset on scenario creation | [optional] [default to undefined]

## Example

```typescript
import { WorkspaceUpdateRequest } from '@cosmotech/api-ts';

const instance: WorkspaceUpdateRequest = {
    key,
    name,
    description,
    tags,
    solution,
    webApp,
    datasetCopy,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
