# Run

a Run with only base properties

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **string** | the Run | [optional] [readonly] [default to undefined]
**state** | [**RunState**](RunState.md) |  | [optional] [default to undefined]
**organizationId** | **string** | the Organization id | [optional] [default to undefined]
**workflowId** | **string** | the Cosmo Tech compute cluster Argo Workflow Id to search | [optional] [default to undefined]
**csmSimulationRun** | **string** | the Cosmo Tech Simulation Run Id | [optional] [readonly] [default to undefined]
**generateName** | **string** | the base name for workflow name generation | [optional] [default to undefined]
**workflowName** | **string** | the Cosmo Tech compute cluster Argo Workflow Name | [optional] [default to undefined]
**ownerId** | **string** | the user id which own this run | [optional] [readonly] [default to undefined]
**workspaceId** | **string** | the Workspace Id | [optional] [readonly] [default to undefined]
**workspaceKey** | **string** | technical key for resource name convention and version grouping. Must be unique | [optional] [readonly] [default to undefined]
**runnerId** | **string** | the Runner Id | [optional] [readonly] [default to undefined]
**solutionId** | **string** | the Solution Id | [optional] [readonly] [default to undefined]
**runTemplateId** | **string** | the Solution Run Template id | [optional] [readonly] [default to undefined]
**computeSize** | **string** | the compute size needed for this Analysis. Standard sizes are basic and highcpu. Default is basic | [optional] [readonly] [default to undefined]
**createdAt** | **string** | the Run creation date | [optional] [readonly] [default to undefined]
**datasetList** | **Array&lt;string&gt;** | the list of Dataset Id associated to this Run | [optional] [readonly] [default to undefined]
**parametersValues** | [**Array&lt;RunTemplateParameterValue&gt;**](RunTemplateParameterValue.md) | the list of Run Template parameters values | [optional] [readonly] [default to undefined]
**nodeLabel** | **string** | the node label request | [optional] [readonly] [default to undefined]
**containers** | [**Array&lt;RunContainer&gt;**](RunContainer.md) | the containers list. This information is not returned by the API. | [optional] [default to undefined]

## Example

```typescript
import { Run } from '@cosmotech/api-ts';

const instance: Run = {
    id,
    state,
    organizationId,
    workflowId,
    csmSimulationRun,
    generateName,
    workflowName,
    ownerId,
    workspaceId,
    workspaceKey,
    runnerId,
    solutionId,
    runTemplateId,
    computeSize,
    createdAt,
    datasetList,
    parametersValues,
    nodeLabel,
    containers,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
