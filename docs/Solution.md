# Solution

A version of a Solution

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **string** | The Solution version unique identifier | [default to undefined]
**organizationId** | **string** | The Organization unique identifier | [default to undefined]
**key** | **string** | The Solution key which groups Solution versions | [default to undefined]
**name** | **string** | The Solution name | [default to undefined]
**description** | **string** | The Solution description | [optional] [default to undefined]
**repository** | **string** | The registry repository containing the image | [default to undefined]
**alwaysPull** | **boolean** | Set to true if the runtemplate wants to always pull the image | [optional] [default to false]
**version** | **string** | The Solution version MAJOR.MINOR.PATCH. Must be aligned with an existing repository tag | [default to undefined]
**createInfo** | [**SolutionEditInfo**](SolutionEditInfo.md) | The details of the Solution creation | [default to undefined]
**updateInfo** | [**SolutionEditInfo**](SolutionEditInfo.md) | The details of the Solution last update | [default to undefined]
**sdkVersion** | **string** | The full SDK version used to build this solution, if available | [optional] [default to undefined]
**url** | **string** | An optional URL link to solution page | [optional] [default to undefined]
**tags** | **Array&lt;string&gt;** | The list of tags | [optional] [default to undefined]
**parameters** | [**Array&lt;RunTemplateParameter&gt;**](RunTemplateParameter.md) | The list of Run Template Parameters | [default to undefined]
**parameterGroups** | [**Array&lt;RunTemplateParameterGroup&gt;**](RunTemplateParameterGroup.md) | The list of parameters groups for the Run Templates | [default to undefined]
**runTemplates** | [**Array&lt;RunTemplate&gt;**](RunTemplate.md) | List of Run Templates | [default to undefined]
**security** | [**SolutionSecurity**](SolutionSecurity.md) |  | [default to undefined]

## Example

```typescript
import { Solution } from '@cosmotech/api-ts';

const instance: Solution = {
    id,
    organizationId,
    key,
    name,
    description,
    repository,
    alwaysPull,
    version,
    createInfo,
    updateInfo,
    sdkVersion,
    url,
    tags,
    parameters,
    parameterGroups,
    runTemplates,
    security,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
