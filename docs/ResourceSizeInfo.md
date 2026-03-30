# ResourceSizeInfo

Define CPUs and memory needs. Values must follow the Kubernetes resource requirements/limits syntax:  See https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#resource-units-in-kubernetes 

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**cpu** | **string** | Define cpu needs | [default to undefined]
**memory** | **string** | Define memory needs | [default to undefined]

## Example

```typescript
import { ResourceSizeInfo } from '@cosmotech/api-ts';

const instance: ResourceSizeInfo = {
    cpu,
    memory,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
