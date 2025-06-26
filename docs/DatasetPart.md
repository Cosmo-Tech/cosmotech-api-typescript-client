# DatasetPart

Dataset part object

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **string** |  | [default to undefined]
**name** | **string** |  | [default to undefined]
**sourceName** | **string** | the source data name (e.g. filename associated to the dataset part) | [default to undefined]
**description** | **string** |  | [optional] [default to undefined]
**tags** | **Array&lt;string&gt;** |  | [default to undefined]
**type** | [**DatasetPartTypeEnum**](DatasetPartTypeEnum.md) |  | [default to undefined]
**organizationId** | **string** | the associated Organization Id | [readonly] [default to undefined]
**workspaceId** | **string** | the associated Workspace Id | [readonly] [default to undefined]
**datasetId** | **string** | the associated Dataset Id | [readonly] [default to undefined]
**createInfo** | [**EditInfo**](EditInfo.md) | The details of the Dataset creation | [default to undefined]
**updateInfo** | [**EditInfo**](EditInfo.md) | The details of the Dataset last update | [default to undefined]

## Example

```typescript
import { DatasetPart } from '@cosmotech/api-ts';

const instance: DatasetPart = {
    id,
    name,
    sourceName,
    description,
    tags,
    type,
    organizationId,
    workspaceId,
    datasetId,
    createInfo,
    updateInfo,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
