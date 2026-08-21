# MemberGroup

A group member of the IAM

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **string** | The group id | [default to undefined]
**role** | **string** | The user role in the IAM | [default to undefined]
**users** | **Array&lt;string&gt;** | The list of users in the group | [default to undefined]

## Example

```typescript
import { MemberGroup } from '@cosmotech/api-ts';

const instance: MemberGroup = {
    id,
    role,
    users,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
