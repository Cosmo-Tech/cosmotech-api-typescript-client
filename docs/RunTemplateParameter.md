# RunTemplateParameter

a Run Template Parameter

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **string** | the Parameter id | [default to undefined]
**labels** | **{ [key: string]: string; }** | a translated label with key as ISO 639-1 code | [optional] [default to undefined]
**varType** | **string** | the variable type for the parameter. Basic types or special type %DATASETID% | [optional] [default to undefined]
**defaultValue** | **string** | the default value for this parameter | [optional] [default to undefined]
**minValue** | **string** | the minimum value for this parameter | [optional] [default to undefined]
**maxValue** | **string** | the maximum value for this parameter | [optional] [default to undefined]
**regexValidation** | **string** | a regex to validate the value | [optional] [default to undefined]
**_options** | **{ [key: string]: any; }** | freeform options | [optional] [default to undefined]

## Example

```typescript
import { RunTemplateParameter } from '@cosmotech/api-ts';

const instance: RunTemplateParameter = {
    id,
    labels,
    varType,
    defaultValue,
    minValue,
    maxValue,
    regexValidation,
    _options,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
