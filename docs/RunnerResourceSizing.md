# RunnerResourceSizing

A description object for resource requests and limits. Values must follow the Kubernetes resource requirements/limits syntax:  See https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#resource-units-in-kubernetes Default configuration is basic sizing 

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**requests** | [**ResourceSizeInfo**](ResourceSizeInfo.md) |  | [default to undefined]
**limits** | [**ResourceSizeInfo**](ResourceSizeInfo.md) |  | [default to undefined]

## Example

```typescript
import { RunnerResourceSizing } from '@cosmotech/api-ts';

const instance: RunnerResourceSizing = {
    requests,
    limits,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
