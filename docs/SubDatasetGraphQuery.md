# SubDatasetGraphQuery

a twin graph query in cypher language

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **string** | the name of the subdataset | [optional] [default to undefined]
**description** | **string** | the description of the subdataset | [optional] [default to undefined]
**queries** | **Array&lt;string&gt;** | the query in cypher language | [optional] [default to undefined]
**main** | **boolean** | is this the main dataset | [optional] [default to undefined]

## Example

```typescript
import { SubDatasetGraphQuery } from '@cosmotech/api-ts';

const instance: SubDatasetGraphQuery = {
    name,
    description,
    queries,
    main,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
