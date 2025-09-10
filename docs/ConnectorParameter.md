# ConnectorParameter

a connector parameter

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **string** | the connector parameter id | [default to undefined]
**label** | **string** | the list of translated parameter group labels | [default to undefined]
**valueType** | **string** | the parameter value type | [optional] [default to undefined]
**_options** | **Array&lt;string&gt;** | the list of available and valid values for the parameter | [optional] [default to undefined]
**_default** | **string** | the default value | [optional] [default to undefined]
**envVar** | **string** | associated environment variable in connector image | [optional] [default to undefined]

## Example

```typescript
import { ConnectorParameter } from '@cosmotech/api-ts';

const instance: ConnectorParameter = {
    id,
    label,
    valueType,
    _options,
    _default,
    envVar,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
