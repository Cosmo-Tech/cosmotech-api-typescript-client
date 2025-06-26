# DatasetCreateRequest

Dataset creation request

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **string** |  | [default to undefined]
**description** | **string** |  | [optional] [default to undefined]
**tags** | **Array&lt;string&gt;** |  | [optional] [default to undefined]
**parts** | [**Array&lt;DatasetPartCreateRequest&gt;**](DatasetPartCreateRequest.md) |  | [optional] [default to undefined]
**security** | [**DatasetSecurity**](DatasetSecurity.md) |  | [optional] [default to undefined]
**runnerId** | **string** |  | [optional] [default to undefined]

## Example

```typescript
import { DatasetCreateRequest } from '@cosmotech/api-ts';

const instance: DatasetCreateRequest = {
    name,
    description,
    tags,
    parts,
    security,
    runnerId,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
