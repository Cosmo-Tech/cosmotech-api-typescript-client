# Organization

an Organization

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **string** | the Organization unique identifier | [optional] [readonly] [default to undefined]
**name** | **string** | the Organization name | [optional] [default to undefined]
**ownerId** | **string** | the Owner User Id | [optional] [readonly] [default to undefined]
**security** | [**OrganizationSecurity**](OrganizationSecurity.md) |  | [optional] [default to undefined]

## Example

```typescript
import { Organization } from '@cosmotech/api-ts';

const instance: Organization = {
    id,
    name,
    ownerId,
    security,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
