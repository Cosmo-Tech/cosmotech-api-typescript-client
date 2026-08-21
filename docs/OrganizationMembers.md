# OrganizationMembers

The Organization members, including users and groups

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**users** | [**Array&lt;OrganizationMemberUser&gt;**](OrganizationMemberUser.md) | The list of users in the organization | [default to undefined]
**groups** | [**Array&lt;OrganizationMemberGroup&gt;**](OrganizationMemberGroup.md) | The list of groups in the organization | [default to undefined]

## Example

```typescript
import { OrganizationMembers } from '@cosmotech/api-ts';

const instance: OrganizationMembers = {
    users,
    groups,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
