# SolutionUpdateRequest

Request object for updating a solution

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**key** | **string** | Technical key for resource name convention and version grouping. Must be unique | [optional] [default to undefined]
**name** | **string** | The Solution name | [optional] [default to undefined]
**description** | **string** | The Solution description | [optional] [default to undefined]
**repository** | **string** | The registry repository containing the image | [optional] [default to undefined]
**alwaysPull** | **boolean** | Set to true if the runtemplate wants to always pull the image | [optional] [default to undefined]
**version** | **string** | The Solution version MAJOR.MINOR.PATCH. Must be aligned with an existing repository tag | [optional] [default to undefined]
**url** | **string** | An optional URL link to solution page | [optional] [default to undefined]
**tags** | **Array&lt;string&gt;** | The list of tags | [optional] [default to undefined]
**parameters** | [**Array&lt;RunTemplateParameterCreateRequest&gt;**](RunTemplateParameterCreateRequest.md) | The list of Run Template Parameters | [optional] [default to undefined]
**parameterGroups** | [**Array&lt;RunTemplateParameterGroupCreateRequest&gt;**](RunTemplateParameterGroupCreateRequest.md) | The list of parameters groups for the Run Templates | [optional] [default to undefined]
**runTemplates** | [**Array&lt;RunTemplateCreateRequest&gt;**](RunTemplateCreateRequest.md) | List of Run Templates | [optional] [default to undefined]

## Example

```typescript
import { SolutionUpdateRequest } from '@cosmotech/api-ts';

const instance: SolutionUpdateRequest = {
    key,
    name,
    description,
    repository,
    alwaysPull,
    version,
    url,
    tags,
    parameters,
    parameterGroups,
    runTemplates,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
