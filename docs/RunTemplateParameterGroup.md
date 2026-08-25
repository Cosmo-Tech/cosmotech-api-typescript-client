# RunTemplateParameterGroup

A Parameter Group for a Run Template

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **string** | The Parameter Group id | [default to undefined]
**description** | **string** | A description of the parameter group | [optional] [default to undefined]
**labels** | **{ [key: string]: string; }** | A translated label with key as ISO 639-1 code | [optional] [default to undefined]
**additionalData** | **{ [key: string]: any; }** | Free form additional data | [optional] [default to undefined]
**parameters** | **Array&lt;string&gt;** | An ordered list of Run Template Parameters | [default to undefined]

## Example

```typescript
import { RunTemplateParameterGroup } from '@cosmotech/api-ts';

const instance: RunTemplateParameterGroup = {
    id,
    description,
    labels,
    additionalData,
    parameters,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
