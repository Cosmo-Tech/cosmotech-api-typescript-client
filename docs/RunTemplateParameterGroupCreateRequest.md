# RunTemplateParameterGroupCreateRequest

A Parameter Group Create Request for a Run Template

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **string** | The Parameter Group id | [default to undefined]
**description** | **string** | A description of the parameter group | [optional] [default to undefined]
**labels** | **{ [key: string]: string; }** | A translated label with key as ISO 639-1 code | [optional] [default to undefined]
**isTable** | **boolean** | Does the group define a table | [optional] [default to false]
**_options** | **{ [key: string]: any; }** | Freeform options | [optional] [default to undefined]
**parentId** | **string** | The Run Template Group parent Id | [optional] [default to undefined]
**parameters** | **Array&lt;string&gt;** | An ordered list of Run Template Parameters | [optional] [default to undefined]

## Example

```typescript
import { RunTemplateParameterGroupCreateRequest } from '@cosmotech/api-ts';

const instance: RunTemplateParameterGroupCreateRequest = {
    id,
    description,
    labels,
    isTable,
    _options,
    parentId,
    parameters,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
