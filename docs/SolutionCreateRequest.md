# SolutionCreateRequest

Request object for creating a new solution

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**key** | **string** | Technical key for resource name convention and version grouping. Must be unique | [default to undefined]
**name** | **string** | Solution name. This name is displayed in the sample webApp | [default to undefined]
**description** | **string** | The Solution description | [optional] [default to undefined]
**repository** | **string** | The registry repository containing the image | [default to undefined]
**version** | **string** | The Solution version MAJOR.MINOR.PATCH | [default to undefined]
**alwaysPull** | **boolean** | Set to true if the runtemplate wants to always pull the image | [optional] [default to false]
**tags** | **Array&lt;string&gt;** | The list of tags | [optional] [default to undefined]
**parameters** | [**Array&lt;RunTemplateParameterCreateRequest&gt;**](RunTemplateParameterCreateRequest.md) | The list of Run Template Parameters | [optional] [default to undefined]
**parameterGroups** | [**Array&lt;RunTemplateParameterGroupCreateRequest&gt;**](RunTemplateParameterGroupCreateRequest.md) | The list of parameters groups for the Run Templates | [optional] [default to undefined]
**runTemplates** | [**Array&lt;RunTemplateCreateRequest&gt;**](RunTemplateCreateRequest.md) | List of Run Templates | [optional] [default to undefined]
**url** | **string** | An optional URL link to solution page | [optional] [default to undefined]
**security** | [**SolutionSecurity**](SolutionSecurity.md) |  | [optional] [default to undefined]

## Example

```typescript
import { SolutionCreateRequest } from '@cosmotech/api-ts';

const instance: SolutionCreateRequest = {
    key,
    name,
    description,
    repository,
    version,
    alwaysPull,
    tags,
    parameters,
    parameterGroups,
    runTemplates,
    url,
    security,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
