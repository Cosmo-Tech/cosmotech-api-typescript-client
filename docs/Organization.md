# Organization

An Organization

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **string** | The Organization unique identifier | [readonly] [default to undefined]
**name** | **string** | The Organization name | [default to undefined]
**createInfo** | [**OrganizationEditInfo**](OrganizationEditInfo.md) | The details of the Organization creation | [default to undefined]
**updateInfo** | [**OrganizationEditInfo**](OrganizationEditInfo.md) | The details of the Organization last update | [default to undefined]
**security** | [**OrganizationSecurity**](OrganizationSecurity.md) |  | [default to undefined]

## Example

```typescript
import { Organization } from '@cosmotech/api-ts';

const instance: Organization = {
    id,
    name,
    createInfo,
    updateInfo,
    security,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
