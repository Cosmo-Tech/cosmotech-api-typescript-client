# RunnerSecurity

the Runner security information

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**_default** | **string** | the role by default | [default to undefined]
**accessControlList** | [**Array&lt;RunnerAccessControl&gt;**](RunnerAccessControl.md) | the list which can access this Runner with detailed access control information | [default to undefined]

## Example

```typescript
import { RunnerSecurity } from '@cosmotech/api-ts';

const instance: RunnerSecurity = {
    _default,
    accessControlList,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
