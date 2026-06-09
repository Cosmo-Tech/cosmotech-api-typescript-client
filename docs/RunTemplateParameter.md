# RunTemplateParameter

A Run Template Parameter

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **string** | The Parameter id | [default to undefined]
**description** | **string** | The parameter description | [optional] [default to undefined]
**labels** | **{ [key: string]: string; }** | A translated label with key as ISO 639-1 code | [optional] [default to undefined]
**varType** | **string** | The variable type for the parameter. Basic types or special type %DATASETID% | [default to undefined]
**defaultValue** | **string** | The default value for this parameter | [optional] [default to undefined]
**minValue** | **string** | The minimum value for this parameter | [optional] [default to undefined]
**maxValue** | **string** | The maximum value for this parameter | [optional] [default to undefined]
**additionalData** | **{ [key: string]: any; }** | Free form additional data | [optional] [default to undefined]

## Example

```typescript
import { RunTemplateParameter } from '@cosmotech/api-ts';

const instance: RunTemplateParameter = {
    id,
    description,
    labels,
    varType,
    defaultValue,
    minValue,
    maxValue,
    additionalData,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
