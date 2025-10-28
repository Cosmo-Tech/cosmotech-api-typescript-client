# DatasetPartCreateRequest

Dataset part create request object

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **string** |  | [default to undefined]
**sourceName** | **string** | the source data name (e.g. filename associated to the dataset part) | [default to undefined]
**description** | **string** |  | [optional] [default to undefined]
**tags** | **Array&lt;string&gt;** |  | [optional] [default to undefined]
**additionalData** | **{ [key: string]: any; }** | Free form additional data | [optional] [default to undefined]
**type** | [**DatasetPartTypeEnum**](DatasetPartTypeEnum.md) |  | [optional] [default to undefined]

## Example

```typescript
import { DatasetPartCreateRequest } from '@cosmotech/api-ts';

const instance: DatasetPartCreateRequest = {
    name,
    sourceName,
    description,
    tags,
    additionalData,
    type,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
