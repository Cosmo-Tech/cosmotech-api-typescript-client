## @cosmotech/api-ts@5.0.1-SNAPSHOT

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
npm install @cosmotech/api-ts@5.0.1-SNAPSHOT --save
```

_unPublished (not recommended):_

```
npm install PATH_TO_GENERATED_PACKAGE --save
```

### Documentation for API Endpoints

All URIs are relative to *http://localhost:8080*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*DatasetApi* | [**createDataset**](docs/DatasetApi.md#createdataset) | **POST** /organizations/{organization_id}/workspaces/{workspace_id}/datasets | Create a Dataset
*DatasetApi* | [**createDatasetAccessControl**](docs/DatasetApi.md#createdatasetaccesscontrol) | **POST** /organizations/{organization_id}/workspaces/{workspace_id}/datasets/{dataset_id}/security/access | Add a control access to the Dataset
*DatasetApi* | [**createDatasetPart**](docs/DatasetApi.md#createdatasetpart) | **POST** /organizations/{organization_id}/workspaces/{workspace_id}/datasets/{dataset_id}/parts | Create a data part of a Dataset
*DatasetApi* | [**deleteDataset**](docs/DatasetApi.md#deletedataset) | **DELETE** /organizations/{organization_id}/workspaces/{workspace_id}/datasets/{dataset_id} | Delete a Dataset
*DatasetApi* | [**deleteDatasetAccessControl**](docs/DatasetApi.md#deletedatasetaccesscontrol) | **DELETE** /organizations/{organization_id}/workspaces/{workspace_id}/datasets/{dataset_id}/security/access/{identity_id} | Remove the specified access from the given Dataset
*DatasetApi* | [**deleteDatasetPart**](docs/DatasetApi.md#deletedatasetpart) | **DELETE** /organizations/{organization_id}/workspaces/{workspace_id}/datasets/{dataset_id}/parts/{dataset_part_id} | Delete a Dataset part
*DatasetApi* | [**downloadDatasetPart**](docs/DatasetApi.md#downloaddatasetpart) | **GET** /organizations/{organization_id}/workspaces/{workspace_id}/datasets/{dataset_id}/parts/{dataset_part_id}/download | Download data from a dataset part
*DatasetApi* | [**getDataset**](docs/DatasetApi.md#getdataset) | **GET** /organizations/{organization_id}/workspaces/{workspace_id}/datasets/{dataset_id} | Retrieve a Dataset
*DatasetApi* | [**getDatasetAccessControl**](docs/DatasetApi.md#getdatasetaccesscontrol) | **GET** /organizations/{organization_id}/workspaces/{workspace_id}/datasets/{dataset_id}/security/access/{identity_id} | Get a control access for the Dataset
*DatasetApi* | [**getDatasetPart**](docs/DatasetApi.md#getdatasetpart) | **GET** /organizations/{organization_id}/workspaces/{workspace_id}/datasets/{dataset_id}/parts/{dataset_part_id} | Retrieve a data part of a Dataset
*DatasetApi* | [**listDatasetParts**](docs/DatasetApi.md#listdatasetparts) | **GET** /organizations/{organization_id}/workspaces/{workspace_id}/datasets/{dataset_id}/parts | Retrieve all dataset parts of a Dataset
*DatasetApi* | [**listDatasetSecurityUsers**](docs/DatasetApi.md#listdatasetsecurityusers) | **GET** /organizations/{organization_id}/workspaces/{workspace_id}/datasets/{dataset_id}/security/users | Get the Dataset security users list
*DatasetApi* | [**listDatasets**](docs/DatasetApi.md#listdatasets) | **GET** /organizations/{organization_id}/workspaces/{workspace_id}/datasets | Retrieve a list of defined Dataset
*DatasetApi* | [**queryData**](docs/DatasetApi.md#querydata) | **GET** /organizations/{organization_id}/workspaces/{workspace_id}/datasets/{dataset_id}/parts/{dataset_part_id}/query | Query data of a Dataset part. This endpoint is only available for dataset parts that support queries (type &#x3D;&#x3D; DB). 
*DatasetApi* | [**replaceDatasetPart**](docs/DatasetApi.md#replacedatasetpart) | **PUT** /organizations/{organization_id}/workspaces/{workspace_id}/datasets/{dataset_id}/parts/{dataset_part_id} | Replace existing dataset parts of a Dataset
*DatasetApi* | [**searchDatasetParts**](docs/DatasetApi.md#searchdatasetparts) | **POST** /organizations/{organization_id}/workspaces/{workspace_id}/datasets/{dataset_id}/parts/search | Search Dataset parts by tags
*DatasetApi* | [**searchDatasets**](docs/DatasetApi.md#searchdatasets) | **POST** /organizations/{organization_id}/workspaces/{workspace_id}/datasets/search | Search Datasets by tags
*DatasetApi* | [**updateDataset**](docs/DatasetApi.md#updatedataset) | **PATCH** /organizations/{organization_id}/workspaces/{workspace_id}/datasets/{dataset_id} | Update a Dataset
*DatasetApi* | [**updateDatasetAccessControl**](docs/DatasetApi.md#updatedatasetaccesscontrol) | **PATCH** /organizations/{organization_id}/workspaces/{workspace_id}/datasets/{dataset_id}/security/access/{identity_id} | Update the specified access to User for a Dataset
*DatasetApi* | [**updateDatasetDefaultSecurity**](docs/DatasetApi.md#updatedatasetdefaultsecurity) | **PATCH** /organizations/{organization_id}/workspaces/{workspace_id}/datasets/{dataset_id}/security/default | Set the Dataset default security
*DatasetApi* | [**updateDatasetPart**](docs/DatasetApi.md#updatedatasetpart) | **PATCH** /organizations/{organization_id}/workspaces/{workspace_id}/datasets/{dataset_id}/parts/{dataset_part_id} | Update existing dataset parts information of a Dataset
*MetaApi* | [**about**](docs/MetaApi.md#about) | **GET** /about | Get various information about the API
*OrganizationApi* | [**createOrganization**](docs/OrganizationApi.md#createorganization) | **POST** /organizations | Create a new organization
*OrganizationApi* | [**createOrganizationAccessControl**](docs/OrganizationApi.md#createorganizationaccesscontrol) | **POST** /organizations/{organization_id}/security/access | Add a control access to the Organization
*OrganizationApi* | [**deleteOrganization**](docs/OrganizationApi.md#deleteorganization) | **DELETE** /organizations/{organization_id} | Delete an organization
*OrganizationApi* | [**deleteOrganizationAccessControl**](docs/OrganizationApi.md#deleteorganizationaccesscontrol) | **DELETE** /organizations/{organization_id}/security/access/{identity_id} | Remove the specified access from the given Organization
*OrganizationApi* | [**getOrganization**](docs/OrganizationApi.md#getorganization) | **GET** /organizations/{organization_id} | Get the details of an Organization
*OrganizationApi* | [**getOrganizationAccessControl**](docs/OrganizationApi.md#getorganizationaccesscontrol) | **GET** /organizations/{organization_id}/security/access/{identity_id} | Get a control access for the Organization
*OrganizationApi* | [**getOrganizationPermissions**](docs/OrganizationApi.md#getorganizationpermissions) | **GET** /organizations/{organization_id}/permissions/{role} | Get the Organization permissions by given role
*OrganizationApi* | [**getOrganizationSecurity**](docs/OrganizationApi.md#getorganizationsecurity) | **GET** /organizations/{organization_id}/security | Get the Organization security information
*OrganizationApi* | [**listOrganizationSecurityUsers**](docs/OrganizationApi.md#listorganizationsecurityusers) | **GET** /organizations/{organization_id}/security/users | Get the Organization security users list
*OrganizationApi* | [**listOrganizations**](docs/OrganizationApi.md#listorganizations) | **GET** /organizations | List all Organizations
*OrganizationApi* | [**listPermissions**](docs/OrganizationApi.md#listpermissions) | **GET** /organizations/permissions | Get all permissions per components
*OrganizationApi* | [**updateOrganization**](docs/OrganizationApi.md#updateorganization) | **PATCH** /organizations/{organization_id} | Update an Organization
*OrganizationApi* | [**updateOrganizationAccessControl**](docs/OrganizationApi.md#updateorganizationaccesscontrol) | **PATCH** /organizations/{organization_id}/security/access/{identity_id} | Update the specified access to User for an Organization
*OrganizationApi* | [**updateOrganizationDefaultSecurity**](docs/OrganizationApi.md#updateorganizationdefaultsecurity) | **PATCH** /organizations/{organization_id}/security/default | Update the Organization default security
*RunApi* | [**deleteRun**](docs/RunApi.md#deleterun) | **DELETE** /organizations/{organization_id}/workspaces/{workspace_id}/runners/{runner_id}/runs/{run_id} | Delete a run
*RunApi* | [**getRun**](docs/RunApi.md#getrun) | **GET** /organizations/{organization_id}/workspaces/{workspace_id}/runners/{runner_id}/runs/{run_id} | Get the details of a run
*RunApi* | [**getRunLogs**](docs/RunApi.md#getrunlogs) | **GET** /organizations/{organization_id}/workspaces/{workspace_id}/runners/{runner_id}/runs/{run_id}/logs | get the logs for the Run
*RunApi* | [**getRunStatus**](docs/RunApi.md#getrunstatus) | **GET** /organizations/{organization_id}/workspaces/{workspace_id}/runners/{runner_id}/runs/{run_id}/status | get the status for the Run
*RunApi* | [**listRuns**](docs/RunApi.md#listruns) | **GET** /organizations/{organization_id}/workspaces/{workspace_id}/runners/{runner_id}/runs | get the list of Runs for the Runner
*RunnerApi* | [**createRunner**](docs/RunnerApi.md#createrunner) | **POST** /organizations/{organization_id}/workspaces/{workspace_id}/runners | Create a new Runner
*RunnerApi* | [**createRunnerAccessControl**](docs/RunnerApi.md#createrunneraccesscontrol) | **POST** /organizations/{organization_id}/workspaces/{workspace_id}/runners/{runner_id}/security/access | Add a control access to the Runner
*RunnerApi* | [**deleteRunner**](docs/RunnerApi.md#deleterunner) | **DELETE** /organizations/{organization_id}/workspaces/{workspace_id}/runners/{runner_id} | Delete a runner
*RunnerApi* | [**deleteRunnerAccessControl**](docs/RunnerApi.md#deleterunneraccesscontrol) | **DELETE** /organizations/{organization_id}/workspaces/{workspace_id}/runners/{runner_id}/security/access/{identity_id} | Remove the specified access from the given Runner
*RunnerApi* | [**getRunner**](docs/RunnerApi.md#getrunner) | **GET** /organizations/{organization_id}/workspaces/{workspace_id}/runners/{runner_id} | Get the details of a runner
*RunnerApi* | [**getRunnerAccessControl**](docs/RunnerApi.md#getrunneraccesscontrol) | **GET** /organizations/{organization_id}/workspaces/{workspace_id}/runners/{runner_id}/security/access/{identity_id} | Get a control access for the Runner
*RunnerApi* | [**getRunnerSecurity**](docs/RunnerApi.md#getrunnersecurity) | **GET** /organizations/{organization_id}/workspaces/{workspace_id}/runners/{runner_id}/security | Get the Runner security information
*RunnerApi* | [**listRunnerPermissions**](docs/RunnerApi.md#listrunnerpermissions) | **GET** /organizations/{organization_id}/workspaces/{workspace_id}/runners/{runner_id}/permissions/{role} | Get the Runner permission by given role
*RunnerApi* | [**listRunnerSecurityUsers**](docs/RunnerApi.md#listrunnersecurityusers) | **GET** /organizations/{organization_id}/workspaces/{workspace_id}/runners/{runner_id}/security/users | Get the Runner security users list
*RunnerApi* | [**listRunners**](docs/RunnerApi.md#listrunners) | **GET** /organizations/{organization_id}/workspaces/{workspace_id}/runners | List all Runners
*RunnerApi* | [**startRun**](docs/RunnerApi.md#startrun) | **POST** /organizations/{organization_id}/workspaces/{workspace_id}/runners/{runner_id}/start | Start a run with runner parameters
*RunnerApi* | [**stopRun**](docs/RunnerApi.md#stoprun) | **POST** /organizations/{organization_id}/workspaces/{workspace_id}/runners/{runner_id}/stop | Stop the last run
*RunnerApi* | [**updateRunner**](docs/RunnerApi.md#updaterunner) | **PATCH** /organizations/{organization_id}/workspaces/{workspace_id}/runners/{runner_id} | Update a runner
*RunnerApi* | [**updateRunnerAccessControl**](docs/RunnerApi.md#updaterunneraccesscontrol) | **PATCH** /organizations/{organization_id}/workspaces/{workspace_id}/runners/{runner_id}/security/access/{identity_id} | Update the specified access to User for a Runner
*RunnerApi* | [**updateRunnerDefaultSecurity**](docs/RunnerApi.md#updaterunnerdefaultsecurity) | **PATCH** /organizations/{organization_id}/workspaces/{workspace_id}/runners/{runner_id}/security/default | Set the Runner default security
*SolutionApi* | [**createSolution**](docs/SolutionApi.md#createsolution) | **POST** /organizations/{organization_id}/solutions | Create a new solution
*SolutionApi* | [**createSolutionAccessControl**](docs/SolutionApi.md#createsolutionaccesscontrol) | **POST** /organizations/{organization_id}/solutions/{solution_id}/security/access | Create solution access control
*SolutionApi* | [**createSolutionParameter**](docs/SolutionApi.md#createsolutionparameter) | **POST** /organizations/{organization_id}/solutions/{solution_id}/parameters | Create solution parameter for a solution
*SolutionApi* | [**createSolutionParameterGroup**](docs/SolutionApi.md#createsolutionparametergroup) | **POST** /organizations/{organization_id}/solutions/{solution_id}/parameterGroups | Create a solution parameter group
*SolutionApi* | [**createSolutionRunTemplate**](docs/SolutionApi.md#createsolutionruntemplate) | **POST** /organizations/{organization_id}/solutions/{solution_id}/runTemplates | Create a solution run template
*SolutionApi* | [**deleteSolution**](docs/SolutionApi.md#deletesolution) | **DELETE** /organizations/{organization_id}/solutions/{solution_id} | Delete a solution
*SolutionApi* | [**deleteSolutionAccessControl**](docs/SolutionApi.md#deletesolutionaccesscontrol) | **DELETE** /organizations/{organization_id}/solutions/{solution_id}/security/access/{identity_id} | Delete solution access control
*SolutionApi* | [**deleteSolutionParameter**](docs/SolutionApi.md#deletesolutionparameter) | **DELETE** /organizations/{organization_id}/solutions/{solution_id}/parameters/{parameter_id} | Delete specific parameter from the solution
*SolutionApi* | [**deleteSolutionParameterGroup**](docs/SolutionApi.md#deletesolutionparametergroup) | **DELETE** /organizations/{organization_id}/solutions/{solution_id}/parameterGroups/{parameter_group_id} | Delete a parameter group from the solution
*SolutionApi* | [**deleteSolutionRunTemplate**](docs/SolutionApi.md#deletesolutionruntemplate) | **DELETE** /organizations/{organization_id}/solutions/{solution_id}/runTemplates/{run_template_id} | Delete a specific run template
*SolutionApi* | [**getRunTemplate**](docs/SolutionApi.md#getruntemplate) | **GET** /organizations/{organization_id}/solutions/{solution_id}/runTemplates/{run_template_id} | Retrieve a solution run templates
*SolutionApi* | [**getSolution**](docs/SolutionApi.md#getsolution) | **GET** /organizations/{organization_id}/solutions/{solution_id} | Get the details of a solution
*SolutionApi* | [**getSolutionAccessControl**](docs/SolutionApi.md#getsolutionaccesscontrol) | **GET** /organizations/{organization_id}/solutions/{solution_id}/security/access/{identity_id} | Get solution access control
*SolutionApi* | [**getSolutionParameter**](docs/SolutionApi.md#getsolutionparameter) | **GET** /organizations/{organization_id}/solutions/{solution_id}/parameters/{parameter_id} | Get the details of a solution parameter
*SolutionApi* | [**getSolutionParameterGroup**](docs/SolutionApi.md#getsolutionparametergroup) | **GET** /organizations/{organization_id}/solutions/{solution_id}/parameterGroups/{parameter_group_id} | Get details of a solution parameter group
*SolutionApi* | [**getSolutionSecurity**](docs/SolutionApi.md#getsolutionsecurity) | **GET** /organizations/{organization_id}/solutions/{solution_id}/security | Get solution security information
*SolutionApi* | [**listRunTemplates**](docs/SolutionApi.md#listruntemplates) | **GET** /organizations/{organization_id}/solutions/{solution_id}/runTemplates | List all solution run templates
*SolutionApi* | [**listSolutionParameterGroups**](docs/SolutionApi.md#listsolutionparametergroups) | **GET** /organizations/{organization_id}/solutions/{solution_id}/parameterGroups | List all solution parameter groups
*SolutionApi* | [**listSolutionParameters**](docs/SolutionApi.md#listsolutionparameters) | **GET** /organizations/{organization_id}/solutions/{solution_id}/parameters | List all solution parameters
*SolutionApi* | [**listSolutionSecurityUsers**](docs/SolutionApi.md#listsolutionsecurityusers) | **GET** /organizations/{organization_id}/solutions/{solution_id}/security/users | List solution security users
*SolutionApi* | [**listSolutions**](docs/SolutionApi.md#listsolutions) | **GET** /organizations/{organization_id}/solutions | List all Solutions
*SolutionApi* | [**updateSolution**](docs/SolutionApi.md#updatesolution) | **PATCH** /organizations/{organization_id}/solutions/{solution_id} | Update a solution
*SolutionApi* | [**updateSolutionAccessControl**](docs/SolutionApi.md#updatesolutionaccesscontrol) | **PATCH** /organizations/{organization_id}/solutions/{solution_id}/security/access/{identity_id} | Update solution access control
*SolutionApi* | [**updateSolutionDefaultSecurity**](docs/SolutionApi.md#updatesolutiondefaultsecurity) | **PATCH** /organizations/{organization_id}/solutions/{solution_id}/security/default | Update solution default security
*SolutionApi* | [**updateSolutionParameter**](docs/SolutionApi.md#updatesolutionparameter) | **PATCH** /organizations/{organization_id}/solutions/{solution_id}/parameters/{parameter_id} | Update solution parameter
*SolutionApi* | [**updateSolutionParameterGroup**](docs/SolutionApi.md#updatesolutionparametergroup) | **PATCH** /organizations/{organization_id}/solutions/{solution_id}/parameterGroups/{parameter_group_id} | Update a solution parameter group
*SolutionApi* | [**updateSolutionRunTemplate**](docs/SolutionApi.md#updatesolutionruntemplate) | **PATCH** /organizations/{organization_id}/solutions/{solution_id}/runTemplates/{run_template_id} | Update a specific run template
*WorkspaceApi* | [**createWorkspace**](docs/WorkspaceApi.md#createworkspace) | **POST** /organizations/{organization_id}/workspaces | Create a new workspace
*WorkspaceApi* | [**createWorkspaceAccessControl**](docs/WorkspaceApi.md#createworkspaceaccesscontrol) | **POST** /organizations/{organization_id}/workspaces/{workspace_id}/security/access | Add a control access to the Workspace
*WorkspaceApi* | [**createWorkspaceFile**](docs/WorkspaceApi.md#createworkspacefile) | **POST** /organizations/{organization_id}/workspaces/{workspace_id}/files | Upload a file for the Workspace
*WorkspaceApi* | [**deleteWorkspace**](docs/WorkspaceApi.md#deleteworkspace) | **DELETE** /organizations/{organization_id}/workspaces/{workspace_id} | Delete a workspace
*WorkspaceApi* | [**deleteWorkspaceAccessControl**](docs/WorkspaceApi.md#deleteworkspaceaccesscontrol) | **DELETE** /organizations/{organization_id}/workspaces/{workspace_id}/security/access/{identity_id} | Remove the specified access from the given Workspace
*WorkspaceApi* | [**deleteWorkspaceFile**](docs/WorkspaceApi.md#deleteworkspacefile) | **DELETE** /organizations/{organization_id}/workspaces/{workspace_id}/files/delete | Delete a workspace file
*WorkspaceApi* | [**deleteWorkspaceFiles**](docs/WorkspaceApi.md#deleteworkspacefiles) | **DELETE** /organizations/{organization_id}/workspaces/{workspace_id}/files | Delete all Workspace files
*WorkspaceApi* | [**getWorkspace**](docs/WorkspaceApi.md#getworkspace) | **GET** /organizations/{organization_id}/workspaces/{workspace_id} | Get the details of a workspace
*WorkspaceApi* | [**getWorkspaceAccessControl**](docs/WorkspaceApi.md#getworkspaceaccesscontrol) | **GET** /organizations/{organization_id}/workspaces/{workspace_id}/security/access/{identity_id} | Get a control access for the Workspace
*WorkspaceApi* | [**getWorkspaceFile**](docs/WorkspaceApi.md#getworkspacefile) | **GET** /organizations/{organization_id}/workspaces/{workspace_id}/files/download | Download the Workspace File specified
*WorkspaceApi* | [**getWorkspaceSecurity**](docs/WorkspaceApi.md#getworkspacesecurity) | **GET** /organizations/{organization_id}/workspaces/{workspace_id}/security | Get the Workspace security information
*WorkspaceApi* | [**listWorkspaceFiles**](docs/WorkspaceApi.md#listworkspacefiles) | **GET** /organizations/{organization_id}/workspaces/{workspace_id}/files | List all Workspace files
*WorkspaceApi* | [**listWorkspaceRolePermissions**](docs/WorkspaceApi.md#listworkspacerolepermissions) | **GET** /organizations/{organization_id}/workspaces/{workspace_id}/permissions/{role} | Get the Workspace permission by given role
*WorkspaceApi* | [**listWorkspaceSecurityUsers**](docs/WorkspaceApi.md#listworkspacesecurityusers) | **GET** /organizations/{organization_id}/workspaces/{workspace_id}/security/users | Get the Workspace security users list
*WorkspaceApi* | [**listWorkspaces**](docs/WorkspaceApi.md#listworkspaces) | **GET** /organizations/{organization_id}/workspaces | List all Workspaces
*WorkspaceApi* | [**updateWorkspace**](docs/WorkspaceApi.md#updateworkspace) | **PATCH** /organizations/{organization_id}/workspaces/{workspace_id} | Update a workspace
*WorkspaceApi* | [**updateWorkspaceAccessControl**](docs/WorkspaceApi.md#updateworkspaceaccesscontrol) | **PATCH** /organizations/{organization_id}/workspaces/{workspace_id}/security/access/{identity_id} | Update the specified access to User for a Workspace
*WorkspaceApi* | [**updateWorkspaceDefaultSecurity**](docs/WorkspaceApi.md#updateworkspacedefaultsecurity) | **PATCH** /organizations/{organization_id}/workspaces/{workspace_id}/security/default | Update the Workspace default security


### Documentation For Models

 - [AboutInfo](docs/AboutInfo.md)
 - [AboutInfoVersion](docs/AboutInfoVersion.md)
 - [ComponentRolePermissions](docs/ComponentRolePermissions.md)
 - [ContainerResourceSizeInfo](docs/ContainerResourceSizeInfo.md)
 - [ContainerResourceSizing](docs/ContainerResourceSizing.md)
 - [CreatedRun](docs/CreatedRun.md)
 - [Dataset](docs/Dataset.md)
 - [DatasetAccessControl](docs/DatasetAccessControl.md)
 - [DatasetCreateInfo](docs/DatasetCreateInfo.md)
 - [DatasetCreateRequest](docs/DatasetCreateRequest.md)
 - [DatasetEditInfo](docs/DatasetEditInfo.md)
 - [DatasetPart](docs/DatasetPart.md)
 - [DatasetPartCreateRequest](docs/DatasetPartCreateRequest.md)
 - [DatasetPartTypeEnum](docs/DatasetPartTypeEnum.md)
 - [DatasetPartUpdateRequest](docs/DatasetPartUpdateRequest.md)
 - [DatasetRole](docs/DatasetRole.md)
 - [DatasetSecurity](docs/DatasetSecurity.md)
 - [DatasetUpdateRequest](docs/DatasetUpdateRequest.md)
 - [LastRunInfo](docs/LastRunInfo.md)
 - [Organization](docs/Organization.md)
 - [OrganizationAccessControl](docs/OrganizationAccessControl.md)
 - [OrganizationCreateRequest](docs/OrganizationCreateRequest.md)
 - [OrganizationEditInfo](docs/OrganizationEditInfo.md)
 - [OrganizationRole](docs/OrganizationRole.md)
 - [OrganizationSecurity](docs/OrganizationSecurity.md)
 - [OrganizationUpdateRequest](docs/OrganizationUpdateRequest.md)
 - [ResourceSizeInfo](docs/ResourceSizeInfo.md)
 - [Run](docs/Run.md)
 - [RunContainer](docs/RunContainer.md)
 - [RunEditInfo](docs/RunEditInfo.md)
 - [RunResourceRequested](docs/RunResourceRequested.md)
 - [RunState](docs/RunState.md)
 - [RunStatus](docs/RunStatus.md)
 - [RunStatusNode](docs/RunStatusNode.md)
 - [RunTemplate](docs/RunTemplate.md)
 - [RunTemplateCreateRequest](docs/RunTemplateCreateRequest.md)
 - [RunTemplateParameter](docs/RunTemplateParameter.md)
 - [RunTemplateParameterCreateRequest](docs/RunTemplateParameterCreateRequest.md)
 - [RunTemplateParameterGroup](docs/RunTemplateParameterGroup.md)
 - [RunTemplateParameterGroupCreateRequest](docs/RunTemplateParameterGroupCreateRequest.md)
 - [RunTemplateParameterGroupUpdateRequest](docs/RunTemplateParameterGroupUpdateRequest.md)
 - [RunTemplateParameterUpdateRequest](docs/RunTemplateParameterUpdateRequest.md)
 - [RunTemplateParameterValue](docs/RunTemplateParameterValue.md)
 - [RunTemplateResourceSizing](docs/RunTemplateResourceSizing.md)
 - [RunTemplateUpdateRequest](docs/RunTemplateUpdateRequest.md)
 - [Runner](docs/Runner.md)
 - [RunnerAccessControl](docs/RunnerAccessControl.md)
 - [RunnerCreateRequest](docs/RunnerCreateRequest.md)
 - [RunnerDatasets](docs/RunnerDatasets.md)
 - [RunnerEditInfo](docs/RunnerEditInfo.md)
 - [RunnerResourceSizing](docs/RunnerResourceSizing.md)
 - [RunnerRole](docs/RunnerRole.md)
 - [RunnerRunTemplateParameterValue](docs/RunnerRunTemplateParameterValue.md)
 - [RunnerSecurity](docs/RunnerSecurity.md)
 - [RunnerUpdateRequest](docs/RunnerUpdateRequest.md)
 - [RunnerValidationStatus](docs/RunnerValidationStatus.md)
 - [Solution](docs/Solution.md)
 - [SolutionAccessControl](docs/SolutionAccessControl.md)
 - [SolutionCreateRequest](docs/SolutionCreateRequest.md)
 - [SolutionEditInfo](docs/SolutionEditInfo.md)
 - [SolutionRole](docs/SolutionRole.md)
 - [SolutionSecurity](docs/SolutionSecurity.md)
 - [SolutionUpdateRequest](docs/SolutionUpdateRequest.md)
 - [Workspace](docs/Workspace.md)
 - [WorkspaceAccessControl](docs/WorkspaceAccessControl.md)
 - [WorkspaceCreateRequest](docs/WorkspaceCreateRequest.md)
 - [WorkspaceEditInfo](docs/WorkspaceEditInfo.md)
 - [WorkspaceFile](docs/WorkspaceFile.md)
 - [WorkspaceRole](docs/WorkspaceRole.md)
 - [WorkspaceSecurity](docs/WorkspaceSecurity.md)
 - [WorkspaceSolution](docs/WorkspaceSolution.md)
 - [WorkspaceUpdateRequest](docs/WorkspaceUpdateRequest.md)


<a id="documentation-for-authorization"></a>
## Documentation For Authorization


Authentication schemes defined for the API:
<a id="oAuth2AuthCode"></a>
### oAuth2AuthCode

- **Type**: OAuth
- **Flow**: accessCode
- **Authorization URL**: https://example.com/authorize
- **Scopes**: N/A

