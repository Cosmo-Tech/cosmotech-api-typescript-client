# RunLogs

the output logs of a run

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**runId** | **string** | the Run Id | [readonly] [default to undefined]
**logs** | [**Array&lt;RunLogsEntry&gt;**](RunLogsEntry.md) | run log entries in chronological order | [readonly] [default to undefined]

## Example

```typescript
import { RunLogs } from '@cosmotech/api-ts';

const instance: RunLogs = {
    runId,
    logs,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
