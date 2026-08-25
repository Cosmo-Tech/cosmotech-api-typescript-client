# OrganizationSecurity

Response object for organization security information

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**_default** | **string** | The role by default | [default to undefined]
**accessControlList** | [**Array&lt;OrganizationAccessControl&gt;**](OrganizationAccessControl.md) | The list which can access this Organization with detailed access control information | [default to undefined]

## Example

```typescript
import { OrganizationSecurity } from '@cosmotech/api-ts';

const instance: OrganizationSecurity = {
    _default,
    accessControlList,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
