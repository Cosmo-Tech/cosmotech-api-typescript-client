# RunStatus

a Run status

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **string** | the Run id | [optional] [default to undefined]
**organizationId** | **string** | the Organization id | [optional] [default to undefined]
**workspaceId** | **string** | the Workspace id | [optional] [default to undefined]
**runnerId** | **string** | the Runner id | [optional] [default to undefined]
**workflowId** | **string** | the Cosmo Tech compute cluster Argo Workflow Id to search | [optional] [default to undefined]
**workflowName** | **string** | the Cosmo Tech compute cluster Argo Workflow Name | [optional] [default to undefined]
**startTime** | **string** | the Run start Date Time | [optional] [default to undefined]
**endTime** | **string** | the Run end Date Time | [optional] [default to undefined]
**phase** | **string** | high-level summary of where the workflow is in its lifecycle | [optional] [default to undefined]
**progress** | **string** | progress to completion | [optional] [default to undefined]
**message** | **string** | a  human readable message indicating details about why the workflow is in this condition | [optional] [default to undefined]
**estimatedDuration** | **number** | estimatedDuration in seconds | [optional] [default to undefined]
**nodes** | [**Array&lt;RunStatusNode&gt;**](RunStatusNode.md) | status of Run nodes | [optional] [default to undefined]
**state** | [**RunState**](RunState.md) |  | [optional] [default to undefined]

## Example

```typescript
import { RunStatus } from '@cosmotech/api-ts';

const instance: RunStatus = {
    id,
    organizationId,
    workspaceId,
    runnerId,
    workflowId,
    workflowName,
    startTime,
    endTime,
    phase,
    progress,
    message,
    estimatedDuration,
    nodes,
    state,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
