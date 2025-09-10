# DeleteHistoricalData

Configuration of scenario runs deletion automatic mecanism

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**enable** | **boolean** | Activate or Deactivate historical data deletion | [default to true]
**pollFrequency** | **number** | define the polling frequency of scenario run status (in millis) | [optional] [default to 10000]
**timeOut** | **number** | define the polling timeout | [optional] [default to 28800]

## Example

```typescript
import { DeleteHistoricalData } from '@cosmotech/api-ts';

const instance: DeleteHistoricalData = {
    enable,
    pollFrequency,
    timeOut,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
