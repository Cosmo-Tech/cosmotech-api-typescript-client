# DatasetCompatibility

a Dataset compatibility constraint to a Solution version open range

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**solutionKey** | **string** | the Solution key which group Solution versions | [default to undefined]
**minimumVersion** | **string** | the Solution minimum version compatibility (version included) | [optional] [default to undefined]
**maximumVersion** | **string** | the Solution maximum version compatibility (version included) | [optional] [default to undefined]

## Example

```typescript
import { DatasetCompatibility } from '@cosmotech/api-ts';

const instance: DatasetCompatibility = {
    solutionKey,
    minimumVersion,
    maximumVersion,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
