# RunStatusNode

status of a Run Node

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **string** | the node id | [optional] [default to undefined]
**name** | **string** | the node unique name | [optional] [default to undefined]
**containerName** | **string** | the Run container name | [optional] [default to undefined]
**outboundNodes** | **Array&lt;string&gt;** | the list of outbound nodes | [optional] [readonly] [default to undefined]
**resourcesDuration** | [**RunResourceRequested**](RunResourceRequested.md) |  | [optional] [default to undefined]
**estimatedDuration** | **number** | estimatedDuration in seconds | [optional] [default to undefined]
**hostNodeName** | **string** | HostNodeName name of the Kubernetes node on which the Pod is running, if applicable | [optional] [default to undefined]
**message** | **string** | a human readable message indicating details about why the node is in this condition | [optional] [default to undefined]
**phase** | **string** | high-level summary of where the node is in its lifecycle | [optional] [default to undefined]
**progress** | **string** | progress to completion | [optional] [default to undefined]
**startTime** | **string** | the node start time | [optional] [default to undefined]
**endTime** | **string** | the node end time | [optional] [default to undefined]

## Example

```typescript
import { RunStatusNode } from '@cosmotech/api-ts';

const instance: RunStatusNode = {
    id,
    name,
    containerName,
    outboundNodes,
    resourcesDuration,
    estimatedDuration,
    hostNodeName,
    message,
    phase,
    progress,
    startTime,
    endTime,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
