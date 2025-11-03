# Dataset

Dataset object

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **string** |  | [default to undefined]
**name** | **string** |  | [default to undefined]
**description** | **string** |  | [optional] [default to undefined]
**organizationId** | **string** | the associated Organization Id | [readonly] [default to undefined]
**workspaceId** | **string** | the associated Workspace Id | [readonly] [default to undefined]
**tags** | **Array&lt;string&gt;** | the list of tags | [default to undefined]
**additionalData** | **{ [key: string]: any; }** | Free form additional data | [optional] [default to undefined]
**parts** | [**Array&lt;DatasetPart&gt;**](DatasetPart.md) |  | [default to undefined]
**createInfo** | [**DatasetCreateInfo**](DatasetCreateInfo.md) | The details of the Dataset creation | [default to undefined]
**updateInfo** | [**DatasetEditInfo**](DatasetEditInfo.md) | The details of the Dataset last update | [default to undefined]
**security** | [**DatasetSecurity**](DatasetSecurity.md) |  | [default to undefined]

## Example

```typescript
import { Dataset } from '@cosmotech/api-ts';

const instance: Dataset = {
    id,
    name,
    description,
    organizationId,
    workspaceId,
    tags,
    additionalData,
    parts,
    createInfo,
    updateInfo,
    security,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
