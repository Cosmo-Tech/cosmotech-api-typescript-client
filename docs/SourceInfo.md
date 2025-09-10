# SourceInfo

Source job import information

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **string** | the source name containing the files to import | [optional] [default to undefined]
**location** | **string** | the source location containing the files to import | [default to undefined]
**path** | **string** | the source location containing the files to import | [optional] [default to undefined]
**jobId** | **string** | indicate the last import jobId | [optional] [default to undefined]

## Example

```typescript
import { SourceInfo } from '@cosmotech/api-ts';

const instance: SourceInfo = {
    name,
    location,
    path,
    jobId,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
