# Solution

a version of a Solution

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **string** | the Solution version unique identifier | [optional] [readonly] [default to undefined]
**organizationId** | **string** | the Organization unique identifier | [optional] [readonly] [default to undefined]
**key** | **string** | the Solution key which group Solution versions | [optional] [default to undefined]
**name** | **string** | the Solution name | [optional] [default to undefined]
**description** | **string** | the Solution description | [optional] [default to undefined]
**repository** | **string** | the registry repository containing the image | [optional] [default to undefined]
**alwaysPull** | **boolean** | set to true if the runtemplate wants to always pull the image | [optional] [default to false]
**csmSimulator** | **string** | the main Cosmo Tech simulator name used in standard Run Template | [optional] [default to undefined]
**version** | **string** | the Solution version MAJOR.MINOR.PATCH. Must be aligned with an existing repository tag | [optional] [default to undefined]
**ownerId** | **string** | the User id which own this Solution | [optional] [readonly] [default to undefined]
**sdkVersion** | **string** | the MAJOR.MINOR version used to build this solution | [optional] [default to undefined]
**url** | **string** | an optional URL link to solution page | [optional] [default to undefined]
**tags** | **Array&lt;string&gt;** | the list of tags | [optional] [default to undefined]
**parameters** | [**Array&lt;RunTemplateParameter&gt;**](RunTemplateParameter.md) | the list of Run Template Parameters | [optional] [default to undefined]
**parameterGroups** | [**Array&lt;RunTemplateParameterGroup&gt;**](RunTemplateParameterGroup.md) | the list of parameters groups for the Run Templates | [optional] [default to undefined]
**runTemplates** | [**Array&lt;RunTemplate&gt;**](RunTemplate.md) | list of Run Template | [default to undefined]
**security** | [**SolutionSecurity**](SolutionSecurity.md) |  | [optional] [default to undefined]

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
    csmSimulator,
    version,
    ownerId,
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
