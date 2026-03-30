# RunTemplateParameterGroup

a Parameter Group for a Run Template

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **string** | the Parameter Group id | [default to undefined]
**labels** | **{ [key: string]: string; }** | a translated label with key as ISO 639-1 code | [optional] [default to undefined]
**isTable** | **boolean** | does the group define a table | [optional] [default to undefined]
**_options** | **{ [key: string]: any; }** | freeform options | [optional] [default to undefined]
**parentId** | **string** | the Run Template Group parent Id | [optional] [default to undefined]
**parameters** | **Array&lt;string&gt;** | an ordered list of Run Template Parameters | [optional] [default to undefined]

## Example

```typescript
import { RunTemplateParameterGroup } from '@cosmotech/api-ts';

const instance: RunTemplateParameterGroup = {
    id,
    labels,
    isTable,
    _options,
    parentId,
    parameters,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
