## @cosmotech/api-ts@4.2.1-onprem

This generator creates TypeScript/JavaScript client that utilizes [axios](https://github.com/axios/axios). The generated Node module can be used in the following environments:

Environment
* Node.js
* Webpack
* Browserify

Language level
* ES5 - you must have a Promises/A+ library installed
* ES6

Module system
* CommonJS
* ES6 module system

It can be used in both TypeScript and JavaScript. In TypeScript, the definition will be automatically resolved via `package.json`. ([Reference](https://www.typescriptlang.org/docs/handbook/declaration-files/consumption.html))

### Building

To build and compile the typescript sources to javascript use:
```
npm install
npm run build
```

### Publishing

First build the package then run `npm publish`

### Consuming

navigate to the folder of your consuming project and run one of the following commands.

_published:_

```
npm install @cosmotech/api-ts@4.2.1-onprem --save
```

_unPublished (not recommended):_

```
npm install PATH_TO_GENERATED_PACKAGE --save
```

### Documentation for API Endpoints

All URIs are relative to *http://localhost*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*ConnectorApi* | [**findAllConnectors**](docs/ConnectorApi.md#findallconnectors) | **GET** /connectors | List all Connectors
*ConnectorApi* | [**findConnectorById**](docs/ConnectorApi.md#findconnectorbyid) | **GET** /connectors/{connector_id} | Get the details of a connector
*ConnectorApi* | [**registerConnector**](docs/ConnectorApi.md#registerconnector) | **POST** /connectors | Register a new connector
*ConnectorApi* | [**unregisterConnector**](docs/ConnectorApi.md#unregisterconnector) | **DELETE** /connectors/{connector_id} | Unregister a connector
*DatasetApi* | [**addDatasetAccessControl**](docs/DatasetApi.md#adddatasetaccesscontrol) | **POST** /organizations/{organization_id}/datasets/{dataset_id}/security/access | Add a control access to the Dataset
*DatasetApi* | [**addOrReplaceDatasetCompatibilityElements**](docs/DatasetApi.md#addorreplacedatasetcompatibilityelements) | **POST** /organizations/{organization_id}/datasets/{dataset_id}/compatibility | Add Dataset Compatibility elements.
*DatasetApi* | [**copyDataset**](docs/DatasetApi.md#copydataset) | **POST** /organizations/{organization_id}/datasets/copy | Copy a Dataset to another Dataset.
*DatasetApi* | [**createDataset**](docs/DatasetApi.md#createdataset) | **POST** /organizations/{organization_id}/datasets | Create a new Dataset
*DatasetApi* | [**createSubDataset**](docs/DatasetApi.md#createsubdataset) | **POST** /organizations/{organization_id}/datasets/{dataset_id}/subdataset | Create a sub-dataset from the dataset in parameter
*DatasetApi* | [**createTwingraphEntities**](docs/DatasetApi.md#createtwingraphentities) | **POST** /organizations/{organization_id}/datasets/{dataset_id}/twingraph/{type} | Create new entities in a graph instance
*DatasetApi* | [**deleteDataset**](docs/DatasetApi.md#deletedataset) | **DELETE** /organizations/{organization_id}/datasets/{dataset_id} | Delete a dataset
*DatasetApi* | [**deleteTwingraphEntities**](docs/DatasetApi.md#deletetwingraphentities) | **DELETE** /organizations/{organization_id}/datasets/{dataset_id}/twingraph/{type} | Delete entities in a graph instance
*DatasetApi* | [**downloadTwingraph**](docs/DatasetApi.md#downloadtwingraph) | **GET** /organizations/{organization_id}/datasets/twingraph/download/{hash} | Download a graph as a zip file
*DatasetApi* | [**findAllDatasets**](docs/DatasetApi.md#findalldatasets) | **GET** /organizations/{organization_id}/datasets | List all Datasets
*DatasetApi* | [**findDatasetById**](docs/DatasetApi.md#finddatasetbyid) | **GET** /organizations/{organization_id}/datasets/{dataset_id} | Get the details of a Dataset
*DatasetApi* | [**getDatasetAccessControl**](docs/DatasetApi.md#getdatasetaccesscontrol) | **GET** /organizations/{organization_id}/datasets/{dataset_id}/security/access/{identity_id} | Get a control access for the Dataset
*DatasetApi* | [**getDatasetSecurity**](docs/DatasetApi.md#getdatasetsecurity) | **GET** /organizations/{organization_id}/datasets/{dataset_id}/security | Get the Dataset security information
*DatasetApi* | [**getDatasetSecurityUsers**](docs/DatasetApi.md#getdatasetsecurityusers) | **GET** /organizations/{organization_id}/datasets/{dataset_id}/security/users | Get the Dataset security users list
*DatasetApi* | [**getDatasetTwingraphStatus**](docs/DatasetApi.md#getdatasettwingraphstatus) | **GET** /organizations/{organization_id}/datasets/{dataset_id}/status | Get the dataset\&#39;s refresh job status
*DatasetApi* | [**getTwingraphEntities**](docs/DatasetApi.md#gettwingraphentities) | **GET** /organizations/{organization_id}/datasets/{dataset_id}/twingraph/{type} | Get entities in a graph instance
*DatasetApi* | [**linkWorkspace**](docs/DatasetApi.md#linkworkspace) | **POST** /organizations/{organization_id}/datasets/{dataset_id}/link | 
*DatasetApi* | [**refreshDataset**](docs/DatasetApi.md#refreshdataset) | **POST** /organizations/{organization_id}/datasets/{dataset_id}/refresh | Refresh data on dataset from dataset\&#39;s source
*DatasetApi* | [**removeAllDatasetCompatibilityElements**](docs/DatasetApi.md#removealldatasetcompatibilityelements) | **DELETE** /organizations/{organization_id}/datasets/{dataset_id}/compatibility | Remove all Dataset Compatibility elements from the Dataset specified
*DatasetApi* | [**removeDatasetAccessControl**](docs/DatasetApi.md#removedatasetaccesscontrol) | **DELETE** /organizations/{organization_id}/datasets/{dataset_id}/security/access/{identity_id} | Remove the specified access from the given Dataset
*DatasetApi* | [**rollbackRefresh**](docs/DatasetApi.md#rollbackrefresh) | **POST** /organizations/{organization_id}/datasets/{dataset_id}/refresh/rollback | Rollback the dataset after a failed refresh
*DatasetApi* | [**searchDatasets**](docs/DatasetApi.md#searchdatasets) | **POST** /organizations/{organization_id}/datasets/search | Search Datasets by tags
*DatasetApi* | [**setDatasetDefaultSecurity**](docs/DatasetApi.md#setdatasetdefaultsecurity) | **POST** /organizations/{organization_id}/datasets/{dataset_id}/security/default | Set the Dataset default security
*DatasetApi* | [**twingraphBatchQuery**](docs/DatasetApi.md#twingraphbatchquery) | **POST** /organizations/{organization_id}/datasets/{dataset_id}/batch-query | Run a query on a graph instance and return the result as a zip file in async mode
*DatasetApi* | [**twingraphBatchUpdate**](docs/DatasetApi.md#twingraphbatchupdate) | **POST** /organizations/{organization_id}/datasets/{dataset_id}/batch | Async batch update by loading a CSV file on a graph instance 
*DatasetApi* | [**twingraphQuery**](docs/DatasetApi.md#twingraphquery) | **POST** /organizations/{organization_id}/datasets/{dataset_id}/twingraph | Return the result of a query made on the graph instance as a json
*DatasetApi* | [**unlinkWorkspace**](docs/DatasetApi.md#unlinkworkspace) | **POST** /organizations/{organization_id}/datasets/{dataset_id}/unlink | 
*DatasetApi* | [**updateDataset**](docs/DatasetApi.md#updatedataset) | **PATCH** /organizations/{organization_id}/datasets/{dataset_id} | Update a dataset
*DatasetApi* | [**updateDatasetAccessControl**](docs/DatasetApi.md#updatedatasetaccesscontrol) | **PATCH** /organizations/{organization_id}/datasets/{dataset_id}/security/access/{identity_id} | Update the specified access to User for a Dataset
*DatasetApi* | [**updateTwingraphEntities**](docs/DatasetApi.md#updatetwingraphentities) | **PATCH** /organizations/{organization_id}/datasets/{dataset_id}/twingraph/{type} | Update entities in a graph instance
*DatasetApi* | [**uploadTwingraph**](docs/DatasetApi.md#uploadtwingraph) | **POST** /organizations/{organization_id}/datasets/{dataset_id} | Upload data from zip file to dataset\&#39;s twingraph
*OrganizationApi* | [**addOrganizationAccessControl**](docs/OrganizationApi.md#addorganizationaccesscontrol) | **POST** /organizations/{organization_id}/security/access | Add a control access to the Organization
*OrganizationApi* | [**findAllOrganizations**](docs/OrganizationApi.md#findallorganizations) | **GET** /organizations | List all Organizations
*OrganizationApi* | [**findOrganizationById**](docs/OrganizationApi.md#findorganizationbyid) | **GET** /organizations/{organization_id} | Get the details of an Organization
*OrganizationApi* | [**getAllPermissions**](docs/OrganizationApi.md#getallpermissions) | **GET** /organizations/permissions | Get all permissions per components
*OrganizationApi* | [**getOrganizationAccessControl**](docs/OrganizationApi.md#getorganizationaccesscontrol) | **GET** /organizations/{organization_id}/security/access/{identity_id} | Get a control access for the Organization
*OrganizationApi* | [**getOrganizationPermissions**](docs/OrganizationApi.md#getorganizationpermissions) | **GET** /organizations/{organization_id}/permissions/{role} | Get the Organization permissions by given role
*OrganizationApi* | [**getOrganizationSecurity**](docs/OrganizationApi.md#getorganizationsecurity) | **GET** /organizations/{organization_id}/security | Get the Organization security information
*OrganizationApi* | [**getOrganizationSecurityUsers**](docs/OrganizationApi.md#getorganizationsecurityusers) | **GET** /organizations/{organization_id}/security/users | Get the Organization security users list
*OrganizationApi* | [**registerOrganization**](docs/OrganizationApi.md#registerorganization) | **POST** /organizations | Register a new organization
*OrganizationApi* | [**removeOrganizationAccessControl**](docs/OrganizationApi.md#removeorganizationaccesscontrol) | **DELETE** /organizations/{organization_id}/security/access/{identity_id} | Remove the specified access from the given Organization
*OrganizationApi* | [**setOrganizationDefaultSecurity**](docs/OrganizationApi.md#setorganizationdefaultsecurity) | **POST** /organizations/{organization_id}/security/default | Set the Organization default security
*OrganizationApi* | [**unregisterOrganization**](docs/OrganizationApi.md#unregisterorganization) | **DELETE** /organizations/{organization_id} | Unregister an organization
*OrganizationApi* | [**updateOrganization**](docs/OrganizationApi.md#updateorganization) | **PATCH** /organizations/{organization_id} | Update an Organization
*OrganizationApi* | [**updateOrganizationAccessControl**](docs/OrganizationApi.md#updateorganizationaccesscontrol) | **PATCH** /organizations/{organization_id}/security/access/{identity_id} | Update the specified access to User for an Organization
*RunApi* | [**deleteRun**](docs/RunApi.md#deleterun) | **DELETE** /organizations/{organization_id}/workspaces/{workspace_id}/runners/{runner_id}/runs/{run_id} | Delete a run
*RunApi* | [**getRun**](docs/RunApi.md#getrun) | **GET** /organizations/{organization_id}/workspaces/{workspace_id}/runners/{runner_id}/runs/{run_id} | Get the details of a run
*RunApi* | [**getRunLogs**](docs/RunApi.md#getrunlogs) | **GET** /organizations/{organization_id}/workspaces/{workspace_id}/runners/{runner_id}/runs/{run_id}/logs | get the logs for the Run
*RunApi* | [**getRunStatus**](docs/RunApi.md#getrunstatus) | **GET** /organizations/{organization_id}/workspaces/{workspace_id}/runners/{runner_id}/runs/{run_id}/status | get the status for the Run
*RunApi* | [**listRuns**](docs/RunApi.md#listruns) | **GET** /organizations/{organization_id}/workspaces/{workspace_id}/runners/{runner_id}/runs | get the list of Runs for the Runner
*RunApi* | [**queryRunData**](docs/RunApi.md#queryrundata) | **POST** /organizations/{organization_id}/workspaces/{workspace_id}/runners/{runner_id}/runs/{run_id}/data/query | query the run data
*RunApi* | [**sendRunData**](docs/RunApi.md#sendrundata) | **POST** /organizations/{organization_id}/workspaces/{workspace_id}/runners/{runner_id}/runs/{run_id}/data/send | Send data associated to a run
*RunnerApi* | [**addRunnerAccessControl**](docs/RunnerApi.md#addrunneraccesscontrol) | **POST** /organizations/{organization_id}/workspaces/{workspace_id}/runners/{runner_id}/security/access | Add a control access to the Runner
*RunnerApi* | [**createRunner**](docs/RunnerApi.md#createrunner) | **POST** /organizations/{organization_id}/workspaces/{workspace_id}/runners | Create a new Runner
*RunnerApi* | [**deleteRunner**](docs/RunnerApi.md#deleterunner) | **DELETE** /organizations/{organization_id}/workspaces/{workspace_id}/runners/{runner_id} | Delete a runner
*RunnerApi* | [**getRunner**](docs/RunnerApi.md#getrunner) | **GET** /organizations/{organization_id}/workspaces/{workspace_id}/runners/{runner_id} | Get the details of an runner
*RunnerApi* | [**getRunnerAccessControl**](docs/RunnerApi.md#getrunneraccesscontrol) | **GET** /organizations/{organization_id}/workspaces/{workspace_id}/runners/{runner_id}/security/access/{identity_id} | Get a control access for the Runner
*RunnerApi* | [**getRunnerPermissions**](docs/RunnerApi.md#getrunnerpermissions) | **GET** /organizations/{organization_id}/workspaces/{workspace_id}/runners/{runner_id}/permissions/{role} | Get the Runner permission by given role
*RunnerApi* | [**getRunnerSecurity**](docs/RunnerApi.md#getrunnersecurity) | **GET** /organizations/{organization_id}/workspaces/{workspace_id}/runners/{runner_id}/security | Get the Runner security information
*RunnerApi* | [**getRunnerSecurityUsers**](docs/RunnerApi.md#getrunnersecurityusers) | **GET** /organizations/{organization_id}/workspaces/{workspace_id}/runners/{runner_id}/security/users | Get the Runner security users list
*RunnerApi* | [**listRunners**](docs/RunnerApi.md#listrunners) | **GET** /organizations/{organization_id}/workspaces/{workspace_id}/runners | List all Runners
*RunnerApi* | [**removeRunnerAccessControl**](docs/RunnerApi.md#removerunneraccesscontrol) | **DELETE** /organizations/{organization_id}/workspaces/{workspace_id}/runners/{runner_id}/security/access/{identity_id} | Remove the specified access from the given Organization Runner
*RunnerApi* | [**setRunnerDefaultSecurity**](docs/RunnerApi.md#setrunnerdefaultsecurity) | **POST** /organizations/{organization_id}/workspaces/{workspace_id}/runners/{runner_id}/security/default | Set the Runner default security
*RunnerApi* | [**startRun**](docs/RunnerApi.md#startrun) | **POST** /organizations/{organization_id}/workspaces/{workspace_id}/runners/{runner_id}/start | Start a run with runner parameters
*RunnerApi* | [**stopRun**](docs/RunnerApi.md#stoprun) | **POST** /organizations/{organization_id}/workspaces/{workspace_id}/runners/{runner_id}/stop | Stop the last run
*RunnerApi* | [**updateRunner**](docs/RunnerApi.md#updaterunner) | **PATCH** /organizations/{organization_id}/workspaces/{workspace_id}/runners/{runner_id} | Update a runner
*RunnerApi* | [**updateRunnerAccessControl**](docs/RunnerApi.md#updaterunneraccesscontrol) | **PATCH** /organizations/{organization_id}/workspaces/{workspace_id}/runners/{runner_id}/security/access/{identity_id} | Update the specified access to User for a Runner
*SolutionApi* | [**addOrReplaceParameterGroups**](docs/SolutionApi.md#addorreplaceparametergroups) | **POST** /organizations/{organization_id}/solutions/{solution_id}/parameterGroups | Add Parameter Groups. Any item with the same ID will be overwritten
*SolutionApi* | [**addOrReplaceParameters**](docs/SolutionApi.md#addorreplaceparameters) | **POST** /organizations/{organization_id}/solutions/{solution_id}/parameters | Add Parameters. Any item with the same ID will be overwritten
*SolutionApi* | [**addOrReplaceRunTemplates**](docs/SolutionApi.md#addorreplaceruntemplates) | **POST** /organizations/{organization_id}/solutions/{solution_id}/runTemplates | Add Run Templates. Any item with the same ID will be overwritten
*SolutionApi* | [**addSolutionAccessControl**](docs/SolutionApi.md#addsolutionaccesscontrol) | **POST** /organizations/{organization_id}/solutions/{solution_id}/security/access | Add a control access to the Solution
*SolutionApi* | [**createSolution**](docs/SolutionApi.md#createsolution) | **POST** /organizations/{organization_id}/solutions | Register a new solution
*SolutionApi* | [**deleteSolution**](docs/SolutionApi.md#deletesolution) | **DELETE** /organizations/{organization_id}/solutions/{solution_id} | Delete a solution
*SolutionApi* | [**deleteSolutionRunTemplate**](docs/SolutionApi.md#deletesolutionruntemplate) | **DELETE** /organizations/{organization_id}/solutions/{solution_id}/runTemplates/{run_template_id} | Remove the specified Solution Run Template
*SolutionApi* | [**findAllSolutions**](docs/SolutionApi.md#findallsolutions) | **GET** /organizations/{organization_id}/solutions | List all Solutions
*SolutionApi* | [**findSolutionById**](docs/SolutionApi.md#findsolutionbyid) | **GET** /organizations/{organization_id}/solutions/{solution_id} | Get the details of a solution
*SolutionApi* | [**getSolutionAccessControl**](docs/SolutionApi.md#getsolutionaccesscontrol) | **GET** /organizations/{organization_id}/solutions/{solution_id}/security/access/{identity_id} | Get a control access for the Solution
*SolutionApi* | [**getSolutionSecurity**](docs/SolutionApi.md#getsolutionsecurity) | **GET** /organizations/{organization_id}/solutions/{solution_id}/security | Get the Solution security information
*SolutionApi* | [**getSolutionSecurityUsers**](docs/SolutionApi.md#getsolutionsecurityusers) | **GET** /organizations/{organization_id}/solutions/{solution_id}/security/users | Get the Solution security users list
*SolutionApi* | [**removeAllRunTemplates**](docs/SolutionApi.md#removeallruntemplates) | **DELETE** /organizations/{organization_id}/solutions/{solution_id}/runTemplates | Remove all Run Templates from the Solution specified
*SolutionApi* | [**removeAllSolutionParameterGroups**](docs/SolutionApi.md#removeallsolutionparametergroups) | **DELETE** /organizations/{organization_id}/solutions/{solution_id}/parameterGroups | Remove all Parameter Groups from the Solution specified
*SolutionApi* | [**removeAllSolutionParameters**](docs/SolutionApi.md#removeallsolutionparameters) | **DELETE** /organizations/{organization_id}/solutions/{solution_id}/parameters | Remove all Parameters from the Solution specified
*SolutionApi* | [**removeSolutionAccessControl**](docs/SolutionApi.md#removesolutionaccesscontrol) | **DELETE** /organizations/{organization_id}/solutions/{solution_id}/security/access/{identity_id} | Remove the specified access from the given Organization Solution
*SolutionApi* | [**setSolutionDefaultSecurity**](docs/SolutionApi.md#setsolutiondefaultsecurity) | **POST** /organizations/{organization_id}/solutions/{solution_id}/security/default | Set the Solution default security
*SolutionApi* | [**updateSolution**](docs/SolutionApi.md#updatesolution) | **PATCH** /organizations/{organization_id}/solutions/{solution_id} | Update a solution
*SolutionApi* | [**updateSolutionAccessControl**](docs/SolutionApi.md#updatesolutionaccesscontrol) | **PATCH** /organizations/{organization_id}/solutions/{solution_id}/security/access/{identity_id} | Update the specified access to User for a Solution
*SolutionApi* | [**updateSolutionRunTemplate**](docs/SolutionApi.md#updatesolutionruntemplate) | **PATCH** /organizations/{organization_id}/solutions/{solution_id}/runTemplates/{run_template_id} | Update the specified Solution Run Template
*WorkspaceApi* | [**addWorkspaceAccessControl**](docs/WorkspaceApi.md#addworkspaceaccesscontrol) | **POST** /organizations/{organization_id}/workspaces/{workspace_id}/security/access | Add a control access to the Workspace
*WorkspaceApi* | [**createWorkspace**](docs/WorkspaceApi.md#createworkspace) | **POST** /organizations/{organization_id}/workspaces | Create a new workspace
*WorkspaceApi* | [**deleteAllWorkspaceFiles**](docs/WorkspaceApi.md#deleteallworkspacefiles) | **DELETE** /organizations/{organization_id}/workspaces/{workspace_id}/files | Delete all Workspace files
*WorkspaceApi* | [**deleteWorkspace**](docs/WorkspaceApi.md#deleteworkspace) | **DELETE** /organizations/{organization_id}/workspaces/{workspace_id} | Delete a workspace
*WorkspaceApi* | [**deleteWorkspaceFile**](docs/WorkspaceApi.md#deleteworkspacefile) | **DELETE** /organizations/{organization_id}/workspaces/{workspace_id}/files/delete | Delete a workspace file
*WorkspaceApi* | [**downloadWorkspaceFile**](docs/WorkspaceApi.md#downloadworkspacefile) | **GET** /organizations/{organization_id}/workspaces/{workspace_id}/files/download | Download the Workspace File specified
*WorkspaceApi* | [**findAllWorkspaceFiles**](docs/WorkspaceApi.md#findallworkspacefiles) | **GET** /organizations/{organization_id}/workspaces/{workspace_id}/files | List all Workspace files
*WorkspaceApi* | [**findAllWorkspaces**](docs/WorkspaceApi.md#findallworkspaces) | **GET** /organizations/{organization_id}/workspaces | List all Workspaces
*WorkspaceApi* | [**findWorkspaceById**](docs/WorkspaceApi.md#findworkspacebyid) | **GET** /organizations/{organization_id}/workspaces/{workspace_id} | Get the details of an workspace
*WorkspaceApi* | [**getWorkspaceAccessControl**](docs/WorkspaceApi.md#getworkspaceaccesscontrol) | **GET** /organizations/{organization_id}/workspaces/{workspace_id}/security/access/{identity_id} | Get a control access for the Workspace
*WorkspaceApi* | [**getWorkspacePermissions**](docs/WorkspaceApi.md#getworkspacepermissions) | **GET** /organizations/{organization_id}/workspaces/{workspace_id}/permissions/{role} | Get the Workspace permission by given role
*WorkspaceApi* | [**getWorkspaceSecurity**](docs/WorkspaceApi.md#getworkspacesecurity) | **GET** /organizations/{organization_id}/workspaces/{workspace_id}/security | Get the Workspace security information
*WorkspaceApi* | [**getWorkspaceSecurityUsers**](docs/WorkspaceApi.md#getworkspacesecurityusers) | **GET** /organizations/{organization_id}/workspaces/{workspace_id}/security/users | Get the Workspace security users list
*WorkspaceApi* | [**linkDataset**](docs/WorkspaceApi.md#linkdataset) | **POST** /organizations/{organization_id}/workspaces/{workspace_id}/link | 
*WorkspaceApi* | [**removeWorkspaceAccessControl**](docs/WorkspaceApi.md#removeworkspaceaccesscontrol) | **DELETE** /organizations/{organization_id}/workspaces/{workspace_id}/security/access/{identity_id} | Remove the specified access from the given Organization Workspace
*WorkspaceApi* | [**setWorkspaceDefaultSecurity**](docs/WorkspaceApi.md#setworkspacedefaultsecurity) | **POST** /organizations/{organization_id}/workspaces/{workspace_id}/security/default | Set the Workspace default security
*WorkspaceApi* | [**unlinkDataset**](docs/WorkspaceApi.md#unlinkdataset) | **POST** /organizations/{organization_id}/workspaces/{workspace_id}/unlink | 
*WorkspaceApi* | [**updateWorkspace**](docs/WorkspaceApi.md#updateworkspace) | **PATCH** /organizations/{organization_id}/workspaces/{workspace_id} | Update a workspace
*WorkspaceApi* | [**updateWorkspaceAccessControl**](docs/WorkspaceApi.md#updateworkspaceaccesscontrol) | **PATCH** /organizations/{organization_id}/workspaces/{workspace_id}/security/access/{identity_id} | Update the specified access to User for a Workspace
*WorkspaceApi* | [**uploadWorkspaceFile**](docs/WorkspaceApi.md#uploadworkspacefile) | **POST** /organizations/{organization_id}/workspaces/{workspace_id}/files | Upload a file for the Workspace


### Documentation For Models

 - [ComponentRolePermissions](docs/ComponentRolePermissions.md)
 - [Connector](docs/Connector.md)
 - [ConnectorParameter](docs/ConnectorParameter.md)
 - [ConnectorParameterGroup](docs/ConnectorParameterGroup.md)
 - [ContainerResourceSizeInfo](docs/ContainerResourceSizeInfo.md)
 - [ContainerResourceSizing](docs/ContainerResourceSizing.md)
 - [CreatedRun](docs/CreatedRun.md)
 - [Dataset](docs/Dataset.md)
 - [DatasetAccessControl](docs/DatasetAccessControl.md)
 - [DatasetCompatibility](docs/DatasetCompatibility.md)
 - [DatasetConnector](docs/DatasetConnector.md)
 - [DatasetCopyParameters](docs/DatasetCopyParameters.md)
 - [DatasetRole](docs/DatasetRole.md)
 - [DatasetSearch](docs/DatasetSearch.md)
 - [DatasetSecurity](docs/DatasetSecurity.md)
 - [DatasetSourceType](docs/DatasetSourceType.md)
 - [DatasetTwinGraphHash](docs/DatasetTwinGraphHash.md)
 - [DatasetTwinGraphInfo](docs/DatasetTwinGraphInfo.md)
 - [DatasetTwinGraphQuery](docs/DatasetTwinGraphQuery.md)
 - [DeleteHistoricalData](docs/DeleteHistoricalData.md)
 - [FileUploadMetadata](docs/FileUploadMetadata.md)
 - [FileUploadValidation](docs/FileUploadValidation.md)
 - [GraphProperties](docs/GraphProperties.md)
 - [IngestionStatusEnum](docs/IngestionStatusEnum.md)
 - [IoTypesEnum](docs/IoTypesEnum.md)
 - [Organization](docs/Organization.md)
 - [OrganizationAccessControl](docs/OrganizationAccessControl.md)
 - [OrganizationRole](docs/OrganizationRole.md)
 - [OrganizationSecurity](docs/OrganizationSecurity.md)
 - [QueryResult](docs/QueryResult.md)
 - [ResourceSizeInfo](docs/ResourceSizeInfo.md)
 - [Run](docs/Run.md)
 - [RunContainer](docs/RunContainer.md)
 - [RunData](docs/RunData.md)
 - [RunDataQuery](docs/RunDataQuery.md)
 - [RunLogs](docs/RunLogs.md)
 - [RunLogsEntry](docs/RunLogsEntry.md)
 - [RunResourceRequested](docs/RunResourceRequested.md)
 - [RunState](docs/RunState.md)
 - [RunStatus](docs/RunStatus.md)
 - [RunStatusNode](docs/RunStatusNode.md)
 - [RunTemplate](docs/RunTemplate.md)
 - [RunTemplateOrchestrator](docs/RunTemplateOrchestrator.md)
 - [RunTemplateParameter](docs/RunTemplateParameter.md)
 - [RunTemplateParameterGroup](docs/RunTemplateParameterGroup.md)
 - [RunTemplateParameterValue](docs/RunTemplateParameterValue.md)
 - [RunTemplateResourceSizing](docs/RunTemplateResourceSizing.md)
 - [RunTemplateStepSource](docs/RunTemplateStepSource.md)
 - [Runner](docs/Runner.md)
 - [RunnerAccessControl](docs/RunnerAccessControl.md)
 - [RunnerResourceSizing](docs/RunnerResourceSizing.md)
 - [RunnerRole](docs/RunnerRole.md)
 - [RunnerRunTemplateParameterValue](docs/RunnerRunTemplateParameterValue.md)
 - [RunnerSecurity](docs/RunnerSecurity.md)
 - [RunnerValidationStatus](docs/RunnerValidationStatus.md)
 - [SendRunDataRequest](docs/SendRunDataRequest.md)
 - [Solution](docs/Solution.md)
 - [SolutionAccessControl](docs/SolutionAccessControl.md)
 - [SolutionRole](docs/SolutionRole.md)
 - [SolutionSecurity](docs/SolutionSecurity.md)
 - [SourceInfo](docs/SourceInfo.md)
 - [SubDatasetGraphQuery](docs/SubDatasetGraphQuery.md)
 - [TwinGraphBatchResult](docs/TwinGraphBatchResult.md)
 - [TwincacheStatusEnum](docs/TwincacheStatusEnum.md)
 - [Workspace](docs/Workspace.md)
 - [WorkspaceAccessControl](docs/WorkspaceAccessControl.md)
 - [WorkspaceFile](docs/WorkspaceFile.md)
 - [WorkspaceRole](docs/WorkspaceRole.md)
 - [WorkspaceSecurity](docs/WorkspaceSecurity.md)
 - [WorkspaceSolution](docs/WorkspaceSolution.md)
 - [WorkspaceWebApp](docs/WorkspaceWebApp.md)


<a id="documentation-for-authorization"></a>
## Documentation For Authorization


Authentication schemes defined for the API:
<a id="oAuth2AuthCode"></a>
### oAuth2AuthCode

- **Type**: OAuth
- **Flow**: accessCode
- **Authorization URL**: https://example.com/authorize
- **Scopes**: N/A

