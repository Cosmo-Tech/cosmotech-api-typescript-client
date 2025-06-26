# RunContainer

a Run container description

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **string** | the container Id | [optional] [readonly] [default to undefined]
**name** | **string** | the container name | [default to undefined]
**labels** | **{ [key: string]: string; }** | the metadata labels | [optional] [default to undefined]
**envVars** | **{ [key: string]: string; }** | environment variable map | [optional] [default to undefined]
**image** | **string** | the container image URI | [default to undefined]
**entrypoint** | **string** | the container entry point | [optional] [default to undefined]
**runArgs** | **Array&lt;string&gt;** | the list of run arguments for the container | [optional] [default to undefined]
**dependencies** | **Array&lt;string&gt;** | the list of dependencies container name to run this container | [optional] [default to undefined]
**solutionContainer** | **boolean** | whether or not this container is a Cosmo Tech solution container | [optional] [readonly] [default to undefined]
**nodeLabel** | **string** | the node label request | [optional] [default to undefined]
**runSizing** | [**ContainerResourceSizing**](ContainerResourceSizing.md) |  | [optional] [default to undefined]

## Example

```typescript
import { RunContainer } from '@cosmotech/api-ts';

const instance: RunContainer = {
    id,
    name,
    labels,
    envVars,
    image,
    entrypoint,
    runArgs,
    dependencies,
    solutionContainer,
    nodeLabel,
    runSizing,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
