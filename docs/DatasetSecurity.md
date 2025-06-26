# DatasetSecurity

the dataset security information

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**_default** | **string** | the role by default | [default to undefined]
**accessControlList** | [**Array&lt;DatasetAccessControl&gt;**](DatasetAccessControl.md) | the list which can access this Dataset with detailed access control information | [default to undefined]

## Example

```typescript
import { DatasetSecurity } from '@cosmotech/api-ts';

const instance: DatasetSecurity = {
    _default,
    accessControlList,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
