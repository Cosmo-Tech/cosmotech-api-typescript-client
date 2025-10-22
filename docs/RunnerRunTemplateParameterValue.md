# RunnerRunTemplateParameterValue

the value of a Solution Run Template parameter for a Runner

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**parameterId** | **string** | the parameter Id | [default to undefined]
**varType** | **string** | the parameter value type | [optional] [readonly] [default to undefined]
**value** | **string** | the parameter value | [default to undefined]
**isInherited** | **boolean** | whether or not the value is inherited from parent or has been changed | [optional] [default to undefined]

## Example

```typescript
import { RunnerRunTemplateParameterValue } from '@cosmotech/api-ts';

const instance: RunnerRunTemplateParameterValue = {
    parameterId,
    varType,
    value,
    isInherited,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
