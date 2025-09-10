# Runner

a Runner with base information

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **string** | the Runner unique identifier | [optional] [readonly] [default to undefined]
**name** | **string** | the Runner name | [optional] [default to undefined]
**description** | **string** | the Runner description | [optional] [default to undefined]
**tags** | **Array&lt;string&gt;** | the list of tags | [optional] [default to undefined]
**parentId** | **string** | the Runner parent id | [optional] [default to undefined]
**ownerId** | **string** | the user id which own this Runner | [optional] [readonly] [default to undefined]
**rootId** | **string** | the runner root id | [optional] [readonly] [default to undefined]
**solutionId** | **string** | the Solution Id associated with this Runner | [optional] [readonly] [default to undefined]
**runTemplateId** | **string** | the Solution Run Template Id associated with this Runner | [optional] [default to undefined]
**organizationId** | **string** | the associated Organization Id | [optional] [readonly] [default to undefined]
**workspaceId** | **string** | the associated Workspace Id | [optional] [readonly] [default to undefined]
**creationDate** | **number** | the Runner creation date | [optional] [readonly] [default to undefined]
**lastUpdate** | **number** | the last time a Runner was updated | [optional] [readonly] [default to undefined]
**ownerName** | **string** | the name of the owner | [optional] [readonly] [default to undefined]
**solutionName** | **string** | the Solution name | [optional] [readonly] [default to undefined]
**runTemplateName** | **string** | the Solution Run Template name associated with this Runner | [optional] [readonly] [default to undefined]
**datasetList** | **Array&lt;string&gt;** | the list of Dataset Id associated to this Runner Run Template | [optional] [default to undefined]
**runSizing** | [**RunnerResourceSizing**](RunnerResourceSizing.md) |  | [optional] [default to undefined]
**parametersValues** | [**Array&lt;RunnerRunTemplateParameterValue&gt;**](RunnerRunTemplateParameterValue.md) | the list of Solution Run Template parameters values | [optional] [default to undefined]
**lastRunId** | **string** | last run id from current runner | [optional] [default to undefined]
**validationStatus** | [**RunnerValidationStatus**](RunnerValidationStatus.md) |  | [optional] [default to undefined]
**security** | [**RunnerSecurity**](RunnerSecurity.md) |  | [optional] [default to undefined]

## Example

```typescript
import { Runner } from '@cosmotech/api-ts';

const instance: Runner = {
    id,
    name,
    description,
    tags,
    parentId,
    ownerId,
    rootId,
    solutionId,
    runTemplateId,
    organizationId,
    workspaceId,
    creationDate,
    lastUpdate,
    ownerName,
    solutionName,
    runTemplateName,
    datasetList,
    runSizing,
    parametersValues,
    lastRunId,
    validationStatus,
    security,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
