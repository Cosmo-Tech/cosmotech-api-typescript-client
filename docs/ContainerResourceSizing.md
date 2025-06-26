# ContainerResourceSizing

a description object for resource requests and limits (default same configuration as basic sizing)

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**requests** | [**ContainerResourceSizeInfo**](ContainerResourceSizeInfo.md) |  | [default to undefined]
**limits** | [**ContainerResourceSizeInfo**](ContainerResourceSizeInfo.md) |  | [default to undefined]

## Example

```typescript
import { ContainerResourceSizing } from '@cosmotech/api-ts';

const instance: ContainerResourceSizing = {
    requests,
    limits,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
