# WorkspaceSecurity

The workspace security information

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**_default** | **string** | The role by default | [default to undefined]
**accessControlList** | [**Array&lt;WorkspaceAccessControl&gt;**](WorkspaceAccessControl.md) | The list which can access this Workspace with detailed access control information | [default to undefined]

## Example

```typescript
import { WorkspaceSecurity } from '@cosmotech/api-ts';

const instance: WorkspaceSecurity = {
    _default,
    accessControlList,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
