# DatasetUpdateRequest

Dataset creation request

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **string** |  | [optional] [default to undefined]
**description** | **string** |  | [optional] [default to undefined]
**tags** | **Array&lt;string&gt;** |  | [optional] [default to undefined]
**additionalData** | **{ [key: string]: any; }** | Free form additional data | [optional] [default to undefined]
**parts** | [**Array&lt;DatasetPartCreateRequest&gt;**](DatasetPartCreateRequest.md) |  | [optional] [default to undefined]
**security** | [**DatasetSecurity**](DatasetSecurity.md) |  | [optional] [default to undefined]

## Example

```typescript
import { DatasetUpdateRequest } from '@cosmotech/api-ts';

const instance: DatasetUpdateRequest = {
    name,
    description,
    tags,
    additionalData,
    parts,
    security,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
