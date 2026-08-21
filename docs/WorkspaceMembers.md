# WorkspaceMembers

The Workspace members, including users and groups

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**users** | [**Array&lt;WorkspaceMemberUser&gt;**](WorkspaceMemberUser.md) | The list of users in the workspace | [default to undefined]
**groups** | [**Array&lt;WorkspaceMemberGroup&gt;**](WorkspaceMemberGroup.md) | The list of groups in the workspace | [default to undefined]

## Example

```typescript
import { WorkspaceMembers } from '@cosmotech/api-ts';

const instance: WorkspaceMembers = {
    users,
    groups,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
