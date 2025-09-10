# Connector

a version of a Connector

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **string** | the Connector version unique identifier | [optional] [readonly] [default to undefined]
**key** | **string** | the Connector key which group Connector versions | [optional] [default to undefined]
**name** | **string** | the Connector name | [optional] [default to undefined]
**description** | **string** | the Connector description | [optional] [default to undefined]
**repository** | **string** | the registry repository containing the image | [optional] [default to undefined]
**version** | **string** | the Connector version MAJOR.MINOR.PATCH. Must be aligned with an existing repository tag | [optional] [default to undefined]
**tags** | **Array&lt;string&gt;** | the list of tags | [optional] [default to undefined]
**ownerId** | **string** | the user id which own this connector version | [optional] [readonly] [default to undefined]
**url** | **string** | an optional URL link to connector page | [optional] [default to undefined]
**ioTypes** | [**Array&lt;IoTypesEnum&gt;**](IoTypesEnum.md) |  | [optional] [default to undefined]
**parameterGroups** | [**Array&lt;ConnectorParameterGroup&gt;**](ConnectorParameterGroup.md) | the list of connector parameters groups | [optional] [default to undefined]

## Example

```typescript
import { Connector } from '@cosmotech/api-ts';

const instance: Connector = {
    id,
    key,
    name,
    description,
    repository,
    version,
    tags,
    ownerId,
    url,
    ioTypes,
    parameterGroups,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
