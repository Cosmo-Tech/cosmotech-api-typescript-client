# DatasetConnector

the Connector setup bound to a Dataset

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **string** | the Connector id | [optional] [default to undefined]
**name** | **string** | the Connector name | [optional] [default to undefined]
**version** | **string** | the Connector version | [optional] [default to undefined]
**parametersValues** | **{ [key: string]: string; }** |  | [optional] [default to undefined]

## Example

```typescript
import { DatasetConnector } from '@cosmotech/api-ts';

const instance: DatasetConnector = {
    id,
    name,
    version,
    parametersValues,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
