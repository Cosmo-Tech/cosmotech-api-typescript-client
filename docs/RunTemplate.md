# RunTemplate

a Solution Run Template

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **string** | the Solution Run Template id | [default to undefined]
**name** | **string** | the Run Template name | [optional] [default to undefined]
**labels** | **{ [key: string]: string; }** | a translated label with key as ISO 639-1 code | [optional] [default to undefined]
**description** | **string** | the Run Template description | [optional] [default to undefined]
**csmSimulation** | **string** | the Cosmo Tech simulation name. This information is send to the Engine. Mandatory information if no Engine is defined | [optional] [default to undefined]
**tags** | **Array&lt;string&gt;** | the list of Run Template tags | [optional] [default to undefined]
**computeSize** | **string** | the compute size needed for this Run Template. Standard sizes are basic and highcpu. Default is basic | [optional] [default to undefined]
**runSizing** | [**RunTemplateResourceSizing**](RunTemplateResourceSizing.md) |  | [optional] [default to undefined]
**noDataIngestionState** | **boolean** | set to true if the run template does not want to check data ingestion state (no probes or not control plane) | [optional] [default to undefined]
**fetchDatasets** | **boolean** | whether or not the fetch dataset step is done | [optional] [default to undefined]
**scenarioDataDownloadTransform** | **boolean** | whether or not the scenario data download transform step step is done | [optional] [default to undefined]
**fetchScenarioParameters** | **boolean** | whether or not the fetch parameters step is done | [optional] [default to undefined]
**applyParameters** | **boolean** | whether or not the apply parameter step is done | [optional] [default to undefined]
**validateData** | **boolean** | whether or not the validate step is done | [optional] [default to undefined]
**sendDatasetsToDataWarehouse** | **boolean** | whether or not the Datasets values are send to the DataWarehouse prior to Simulation Run. If not set follow the Workspace setting | [optional] [default to undefined]
**sendInputParametersToDataWarehouse** | **boolean** | whether or not the input parameters values are send to the DataWarehouse prior to Simulation Run. If not set follow the Workspace setting | [optional] [default to undefined]
**preRun** | **boolean** | whether or not the pre-run step is done | [optional] [default to undefined]
**run** | **boolean** | whether or not the run step is done | [optional] [default to undefined]
**postRun** | **boolean** | whether or not the post-run step is done | [optional] [default to undefined]
**parametersJson** | **boolean** | whether or not to store the scenario parameters in json instead of csv | [optional] [default to undefined]
**parametersHandlerSource** | [**RunTemplateStepSource**](RunTemplateStepSource.md) |  | [optional] [default to undefined]
**datasetValidatorSource** | [**RunTemplateStepSource**](RunTemplateStepSource.md) |  | [optional] [default to undefined]
**preRunSource** | [**RunTemplateStepSource**](RunTemplateStepSource.md) |  | [optional] [default to undefined]
**runSource** | [**RunTemplateStepSource**](RunTemplateStepSource.md) |  | [optional] [default to undefined]
**postRunSource** | [**RunTemplateStepSource**](RunTemplateStepSource.md) |  | [optional] [default to undefined]
**scenariodataTransformSource** | [**RunTemplateStepSource**](RunTemplateStepSource.md) |  | [optional] [default to undefined]
**parameterGroups** | **Array&lt;string&gt;** | the ordered list of parameters groups for the Run Template | [optional] [default to undefined]
**stackSteps** | **boolean** | whether or not to stack adjacent scenario run steps in one container run which will chain steps | [optional] [default to undefined]
**gitRepositoryUrl** | **string** | an optional URL to the git repository | [optional] [default to undefined]
**gitBranchName** | **string** | an optional git branch name | [optional] [default to undefined]
**runTemplateSourceDir** | **string** | an optional directory where to find the run template source | [optional] [default to undefined]
**orchestratorType** | [**RunTemplateOrchestrator**](RunTemplateOrchestrator.md) |  | [optional] [default to undefined]
**executionTimeout** | **number** | an optional duration in seconds in which a workflow is allowed to run | [optional] [default to undefined]
**deleteHistoricalData** | [**DeleteHistoricalData**](DeleteHistoricalData.md) |  | [optional] [default to undefined]

## Example

```typescript
import { RunTemplate } from '@cosmotech/api-ts';

const instance: RunTemplate = {
    id,
    name,
    labels,
    description,
    csmSimulation,
    tags,
    computeSize,
    runSizing,
    noDataIngestionState,
    fetchDatasets,
    scenarioDataDownloadTransform,
    fetchScenarioParameters,
    applyParameters,
    validateData,
    sendDatasetsToDataWarehouse,
    sendInputParametersToDataWarehouse,
    preRun,
    run,
    postRun,
    parametersJson,
    parametersHandlerSource,
    datasetValidatorSource,
    preRunSource,
    runSource,
    postRunSource,
    scenariodataTransformSource,
    parameterGroups,
    stackSteps,
    gitRepositoryUrl,
    gitBranchName,
    runTemplateSourceDir,
    orchestratorType,
    executionTimeout,
    deleteHistoricalData,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
