# Dataset

a Dataset

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **string** | the Dataset unique identifier | [optional] [readonly] [default to undefined]
**name** | **string** | the Dataset name | [optional] [default to undefined]
**description** | **string** | the Dataset description | [optional] [default to undefined]
**ownerId** | **string** | the User id which own this Dataset | [optional] [readonly] [default to undefined]
**ownerName** | **string** | the name of the owner | [optional] [readonly] [default to undefined]
**organizationId** | **string** | the Organization Id related to this Dataset | [optional] [readonly] [default to undefined]
**parentId** | **string** | the Dataset id which is the parent of this Dataset | [optional] [default to undefined]
**linkedWorkspaceIdList** | **Array&lt;string&gt;** | list of workspace linked to this dataset | [optional] [default to undefined]
**twingraphId** | **string** | the twin graph id | [optional] [default to undefined]
**main** | **boolean** | is this the main dataset | [optional] [default to undefined]
**creationDate** | **number** | the Dataset creation date | [optional] [readonly] [default to undefined]
**refreshDate** | **number** | the last time a refresh was done | [optional] [readonly] [default to undefined]
**sourceType** | [**DatasetSourceType**](DatasetSourceType.md) |  | [optional] [default to undefined]
**source** | [**SourceInfo**](SourceInfo.md) |  | [optional] [default to undefined]
**ingestionStatus** | [**IngestionStatusEnum**](IngestionStatusEnum.md) |  | [optional] [default to undefined]
**twincacheStatus** | [**TwincacheStatusEnum**](TwincacheStatusEnum.md) |  | [optional] [default to undefined]
**queries** | **Array&lt;string&gt;** | the list of queries | [optional] [default to undefined]
**tags** | **Array&lt;string&gt;** | the list of tags | [optional] [default to undefined]
**connector** | [**DatasetConnector**](DatasetConnector.md) |  | [optional] [default to undefined]
**fragmentsIds** | **Array&lt;string&gt;** | the list of other Datasets ids to compose as fragments | [optional] [default to undefined]
**validatorId** | **string** | the validator id | [optional] [default to undefined]
**compatibility** | [**Array&lt;DatasetCompatibility&gt;**](DatasetCompatibility.md) | the list of compatible Solutions versions | [optional] [default to undefined]
**security** | [**DatasetSecurity**](DatasetSecurity.md) |  | [optional] [default to undefined]

## Example

```typescript
import { Dataset } from '@cosmotech/api-ts';

const instance: Dataset = {
    id,
    name,
    description,
    ownerId,
    ownerName,
    organizationId,
    parentId,
    linkedWorkspaceIdList,
    twingraphId,
    main,
    creationDate,
    refreshDate,
    sourceType,
    source,
    ingestionStatus,
    twincacheStatus,
    queries,
    tags,
    connector,
    fragmentsIds,
    validatorId,
    compatibility,
    security,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
