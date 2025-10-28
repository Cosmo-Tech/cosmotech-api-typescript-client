# WorkspaceCreateRequest

Request object for creating a new workspace

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**key** | **string** | Technical key for resource name convention and version grouping. Must be unique | [default to undefined]
**name** | **string** | Workspace name. This name is displayed in the sample webApp | [default to undefined]
**description** | **string** | The Workspace description | [optional] [default to undefined]
**version** | **string** | The Workspace version MAJOR.MINOR.PATCH. | [optional] [default to undefined]
**tags** | **Array&lt;string&gt;** | The list of tags | [optional] [default to undefined]
**solution** | [**WorkspaceSolution**](WorkspaceSolution.md) |  | [default to undefined]
**additionalData** | **{ [key: string]: any; }** | Free form additional data | [optional] [default to undefined]
**datasetCopy** | **boolean** | Activate the copy of dataset on scenario creation | [optional] [default to true]
**security** | [**WorkspaceSecurity**](WorkspaceSecurity.md) |  | [optional] [default to undefined]

## Example

```typescript
import { WorkspaceCreateRequest } from '@cosmotech/api-ts';

const instance: WorkspaceCreateRequest = {
    key,
    name,
    description,
    version,
    tags,
    solution,
    additionalData,
    datasetCopy,
    security,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
