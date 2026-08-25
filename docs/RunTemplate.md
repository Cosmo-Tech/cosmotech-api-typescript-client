# RunTemplate

A Solution Run Template

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **string** | The Solution Run Template id | [default to undefined]
**name** | **string** | The Run Template name | [optional] [default to undefined]
**labels** | **{ [key: string]: string; }** | A translated label with key as ISO 639-1 code | [optional] [default to undefined]
**description** | **string** | The Run Template description | [optional] [default to undefined]
**tags** | **Array&lt;string&gt;** | The list of Run Template tags | [optional] [default to undefined]
**computeSize** | **string** | The compute size needed for this Run Template | [optional] [default to undefined]
**runSizing** | [**RunTemplateResourceSizing**](RunTemplateResourceSizing.md) |  | [optional] [default to undefined]
**parameterGroups** | **Array&lt;string&gt;** | The ordered list of parameters groups for the Run Template | [default to undefined]
**executionTimeout** | **number** | An optional duration in seconds in which a workflow is allowed to run | [optional] [default to undefined]

## Example

```typescript
import { RunTemplate } from '@cosmotech/api-ts';

const instance: RunTemplate = {
    id,
    name,
    labels,
    description,
    tags,
    computeSize,
    runSizing,
    parameterGroups,
    executionTimeout,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
