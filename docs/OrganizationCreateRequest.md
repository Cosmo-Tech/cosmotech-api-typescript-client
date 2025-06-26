# OrganizationCreateRequest

Request object for creating a new organization

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **string** | The Organization name | [default to undefined]
**security** | [**OrganizationSecurity**](OrganizationSecurity.md) |  | [optional] [default to undefined]

## Example

```typescript
import { OrganizationCreateRequest } from '@cosmotech/api-ts';

const instance: OrganizationCreateRequest = {
    name,
    security,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
