# WorkspaceApi

All URIs are relative to *http://localhost*

|Method | HTTP request | Description|
|------------- | ------------- | -------------|
|[**addWorkspaceAccessControl**](#addworkspaceaccesscontrol) | **POST** /organizations/{organization_id}/workspaces/{workspace_id}/security/access | Add a control access to the Workspace|
|[**createWorkspace**](#createworkspace) | **POST** /organizations/{organization_id}/workspaces | Create a new workspace|
|[**deleteAllWorkspaceFiles**](#deleteallworkspacefiles) | **DELETE** /organizations/{organization_id}/workspaces/{workspace_id}/files | Delete all Workspace files|
|[**deleteWorkspace**](#deleteworkspace) | **DELETE** /organizations/{organization_id}/workspaces/{workspace_id} | Delete a workspace|
|[**deleteWorkspaceFile**](#deleteworkspacefile) | **DELETE** /organizations/{organization_id}/workspaces/{workspace_id}/files/delete | Delete a workspace file|
|[**downloadWorkspaceFile**](#downloadworkspacefile) | **GET** /organizations/{organization_id}/workspaces/{workspace_id}/files/download | Download the Workspace File specified|
|[**findAllWorkspaceFiles**](#findallworkspacefiles) | **GET** /organizations/{organization_id}/workspaces/{workspace_id}/files | List all Workspace files|
|[**findAllWorkspaces**](#findallworkspaces) | **GET** /organizations/{organization_id}/workspaces | List all Workspaces|
|[**findWorkspaceById**](#findworkspacebyid) | **GET** /organizations/{organization_id}/workspaces/{workspace_id} | Get the details of an workspace|
|[**getWorkspaceAccessControl**](#getworkspaceaccesscontrol) | **GET** /organizations/{organization_id}/workspaces/{workspace_id}/security/access/{identity_id} | Get a control access for the Workspace|
|[**getWorkspacePermissions**](#getworkspacepermissions) | **GET** /organizations/{organization_id}/workspaces/{workspace_id}/permissions/{role} | Get the Workspace permission by given role|
|[**getWorkspaceSecurity**](#getworkspacesecurity) | **GET** /organizations/{organization_id}/workspaces/{workspace_id}/security | Get the Workspace security information|
|[**getWorkspaceSecurityUsers**](#getworkspacesecurityusers) | **GET** /organizations/{organization_id}/workspaces/{workspace_id}/security/users | Get the Workspace security users list|
|[**linkDataset**](#linkdataset) | **POST** /organizations/{organization_id}/workspaces/{workspace_id}/link | |
|[**removeWorkspaceAccessControl**](#removeworkspaceaccesscontrol) | **DELETE** /organizations/{organization_id}/workspaces/{workspace_id}/security/access/{identity_id} | Remove the specified access from the given Organization Workspace|
|[**setWorkspaceDefaultSecurity**](#setworkspacedefaultsecurity) | **POST** /organizations/{organization_id}/workspaces/{workspace_id}/security/default | Set the Workspace default security|
|[**unlinkDataset**](#unlinkdataset) | **POST** /organizations/{organization_id}/workspaces/{workspace_id}/unlink | |
|[**updateWorkspace**](#updateworkspace) | **PATCH** /organizations/{organization_id}/workspaces/{workspace_id} | Update a workspace|
|[**updateWorkspaceAccessControl**](#updateworkspaceaccesscontrol) | **PATCH** /organizations/{organization_id}/workspaces/{workspace_id}/security/access/{identity_id} | Update the specified access to User for a Workspace|
|[**uploadWorkspaceFile**](#uploadworkspacefile) | **POST** /organizations/{organization_id}/workspaces/{workspace_id}/files | Upload a file for the Workspace|

# **addWorkspaceAccessControl**
> WorkspaceAccessControl addWorkspaceAccessControl(workspaceAccessControl)


### Example

```typescript
import {
    WorkspaceApi,
    Configuration,
    WorkspaceAccessControl
} from '@cosmotech/api-ts';

const configuration = new Configuration();
const apiInstance = new WorkspaceApi(configuration);

let organizationId: string; //the Organization identifier (default to undefined)
let workspaceId: string; //the Workspace identifier (default to undefined)
let workspaceAccessControl: WorkspaceAccessControl; //the new Workspace security access to add.

const { status, data } = await apiInstance.addWorkspaceAccessControl(
    organizationId,
    workspaceId,
    workspaceAccessControl
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **workspaceAccessControl** | **WorkspaceAccessControl**| the new Workspace security access to add. | |
| **organizationId** | [**string**] | the Organization identifier | defaults to undefined|
| **workspaceId** | [**string**] | the Workspace identifier | defaults to undefined|


### Return type

**WorkspaceAccessControl**

### Authorization

[oAuth2AuthCode](../README.md#oAuth2AuthCode)

### HTTP request headers

 - **Content-Type**: application/json, application/yaml
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**201** | The Workspace access |  -  |
|**404** | the Workspace specified is unknown or you don\&#39;t have access to it |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createWorkspace**
> Workspace createWorkspace(workspace)


### Example

```typescript
import {
    WorkspaceApi,
    Configuration,
    Workspace
} from '@cosmotech/api-ts';

const configuration = new Configuration();
const apiInstance = new WorkspaceApi(configuration);

let organizationId: string; //the Organization identifier (default to undefined)
let workspace: Workspace; //the Workspace to create

const { status, data } = await apiInstance.createWorkspace(
    organizationId,
    workspace
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **workspace** | **Workspace**| the Workspace to create | |
| **organizationId** | [**string**] | the Organization identifier | defaults to undefined|


### Return type

**Workspace**

### Authorization

[oAuth2AuthCode](../README.md#oAuth2AuthCode)

### HTTP request headers

 - **Content-Type**: application/json, application/yaml
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**201** | the workspace details |  -  |
|**400** | Bad request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteAllWorkspaceFiles**
> deleteAllWorkspaceFiles()


### Example

```typescript
import {
    WorkspaceApi,
    Configuration
} from '@cosmotech/api-ts';

const configuration = new Configuration();
const apiInstance = new WorkspaceApi(configuration);

let organizationId: string; //the Organization identifier (default to undefined)
let workspaceId: string; //the Workspace identifier (default to undefined)

const { status, data } = await apiInstance.deleteAllWorkspaceFiles(
    organizationId,
    workspaceId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **organizationId** | [**string**] | the Organization identifier | defaults to undefined|
| **workspaceId** | [**string**] | the Workspace identifier | defaults to undefined|


### Return type

void (empty response body)

### Authorization

[oAuth2AuthCode](../README.md#oAuth2AuthCode)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**204** | Request succeeded |  -  |
|**404** | the Workspace specified is unknown or you don\&#39;t have access to them |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteWorkspace**
> deleteWorkspace()


### Example

```typescript
import {
    WorkspaceApi,
    Configuration
} from '@cosmotech/api-ts';

const configuration = new Configuration();
const apiInstance = new WorkspaceApi(configuration);

let organizationId: string; //the Organization identifier (default to undefined)
let workspaceId: string; //the Workspace identifier (default to undefined)

const { status, data } = await apiInstance.deleteWorkspace(
    organizationId,
    workspaceId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **organizationId** | [**string**] | the Organization identifier | defaults to undefined|
| **workspaceId** | [**string**] | the Workspace identifier | defaults to undefined|


### Return type

void (empty response body)

### Authorization

[oAuth2AuthCode](../README.md#oAuth2AuthCode)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**204** | the workspace details |  -  |
|**400** | Bad request |  -  |
|**404** | the Workspace specified is unknown or you don\&#39;t have access to it |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteWorkspaceFile**
> deleteWorkspaceFile()


### Example

```typescript
import {
    WorkspaceApi,
    Configuration
} from '@cosmotech/api-ts';

const configuration = new Configuration();
const apiInstance = new WorkspaceApi(configuration);

let organizationId: string; //the Organization identifier (default to undefined)
let workspaceId: string; //the Workspace identifier (default to undefined)
let fileName: string; //the file name (default to undefined)

const { status, data } = await apiInstance.deleteWorkspaceFile(
    organizationId,
    workspaceId,
    fileName
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **organizationId** | [**string**] | the Organization identifier | defaults to undefined|
| **workspaceId** | [**string**] | the Workspace identifier | defaults to undefined|
| **fileName** | [**string**] | the file name | defaults to undefined|


### Return type

void (empty response body)

### Authorization

[oAuth2AuthCode](../README.md#oAuth2AuthCode)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**204** | Request succeeded |  -  |
|**404** | the Workspace or the file specified is unknown or you don\&#39;t have access to them |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **downloadWorkspaceFile**
> File downloadWorkspaceFile()


### Example

```typescript
import {
    WorkspaceApi,
    Configuration
} from '@cosmotech/api-ts';

const configuration = new Configuration();
const apiInstance = new WorkspaceApi(configuration);

let organizationId: string; //the Organization identifier (default to undefined)
let workspaceId: string; //the Workspace identifier (default to undefined)
let fileName: string; //the file name (default to undefined)

const { status, data } = await apiInstance.downloadWorkspaceFile(
    organizationId,
    workspaceId,
    fileName
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **organizationId** | [**string**] | the Organization identifier | defaults to undefined|
| **workspaceId** | [**string**] | the Workspace identifier | defaults to undefined|
| **fileName** | [**string**] | the file name | defaults to undefined|


### Return type

**File**

### Authorization

[oAuth2AuthCode](../README.md#oAuth2AuthCode)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/octet-stream


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | the workspace file as a resource |  -  |
|**404** | the Workspace file specified is unknown or you don\&#39;t have access to it |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **findAllWorkspaceFiles**
> Array<WorkspaceFile> findAllWorkspaceFiles()


### Example

```typescript
import {
    WorkspaceApi,
    Configuration
} from '@cosmotech/api-ts';

const configuration = new Configuration();
const apiInstance = new WorkspaceApi(configuration);

let organizationId: string; //the Organization identifier (default to undefined)
let workspaceId: string; //the Workspace identifier (default to undefined)

const { status, data } = await apiInstance.findAllWorkspaceFiles(
    organizationId,
    workspaceId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **organizationId** | [**string**] | the Organization identifier | defaults to undefined|
| **workspaceId** | [**string**] | the Workspace identifier | defaults to undefined|


### Return type

**Array<WorkspaceFile>**

### Authorization

[oAuth2AuthCode](../README.md#oAuth2AuthCode)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | the workspace files |  -  |
|**404** | the Workspace specified is unknown or you don\&#39;t have access to it |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **findAllWorkspaces**
> Array<Workspace> findAllWorkspaces()


### Example

```typescript
import {
    WorkspaceApi,
    Configuration
} from '@cosmotech/api-ts';

const configuration = new Configuration();
const apiInstance = new WorkspaceApi(configuration);

let organizationId: string; //the Organization identifier (default to undefined)
let page: number; //page number to query (first page is at index 0) (optional) (default to undefined)
let size: number; //amount of result by page (optional) (default to undefined)

const { status, data } = await apiInstance.findAllWorkspaces(
    organizationId,
    page,
    size
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **organizationId** | [**string**] | the Organization identifier | defaults to undefined|
| **page** | [**number**] | page number to query (first page is at index 0) | (optional) defaults to undefined|
| **size** | [**number**] | amount of result by page | (optional) defaults to undefined|


### Return type

**Array<Workspace>**

### Authorization

[oAuth2AuthCode](../README.md#oAuth2AuthCode)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | the workspace details |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **findWorkspaceById**
> Workspace findWorkspaceById()


### Example

```typescript
import {
    WorkspaceApi,
    Configuration
} from '@cosmotech/api-ts';

const configuration = new Configuration();
const apiInstance = new WorkspaceApi(configuration);

let organizationId: string; //the Organization identifier (default to undefined)
let workspaceId: string; //the Workspace identifier (default to undefined)

const { status, data } = await apiInstance.findWorkspaceById(
    organizationId,
    workspaceId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **organizationId** | [**string**] | the Organization identifier | defaults to undefined|
| **workspaceId** | [**string**] | the Workspace identifier | defaults to undefined|


### Return type

**Workspace**

### Authorization

[oAuth2AuthCode](../README.md#oAuth2AuthCode)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | the Workspace details |  -  |
|**404** | The Workspace specified is unknown or you don\&#39;t have access to it |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getWorkspaceAccessControl**
> WorkspaceAccessControl getWorkspaceAccessControl()


### Example

```typescript
import {
    WorkspaceApi,
    Configuration
} from '@cosmotech/api-ts';

const configuration = new Configuration();
const apiInstance = new WorkspaceApi(configuration);

let organizationId: string; //the Organization identifier (default to undefined)
let workspaceId: string; //the Workspace identifier (default to undefined)
let identityId: string; //the User identifier (default to undefined)

const { status, data } = await apiInstance.getWorkspaceAccessControl(
    organizationId,
    workspaceId,
    identityId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **organizationId** | [**string**] | the Organization identifier | defaults to undefined|
| **workspaceId** | [**string**] | the Workspace identifier | defaults to undefined|
| **identityId** | [**string**] | the User identifier | defaults to undefined|


### Return type

**WorkspaceAccessControl**

### Authorization

[oAuth2AuthCode](../README.md#oAuth2AuthCode)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | The Workspace access |  -  |
|**404** | The Workspace or user specified is unknown or you don\&#39;t have access to it |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getWorkspacePermissions**
> Array<string> getWorkspacePermissions()


### Example

```typescript
import {
    WorkspaceApi,
    Configuration
} from '@cosmotech/api-ts';

const configuration = new Configuration();
const apiInstance = new WorkspaceApi(configuration);

let organizationId: string; //the Organization identifier (default to undefined)
let workspaceId: string; //the Workspace identifier (default to undefined)
let role: string; //the Role (default to undefined)

const { status, data } = await apiInstance.getWorkspacePermissions(
    organizationId,
    workspaceId,
    role
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **organizationId** | [**string**] | the Organization identifier | defaults to undefined|
| **workspaceId** | [**string**] | the Workspace identifier | defaults to undefined|
| **role** | [**string**] | the Role | defaults to undefined|


### Return type

**Array<string>**

### Authorization

[oAuth2AuthCode](../README.md#oAuth2AuthCode)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | The Workspace security permission list |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getWorkspaceSecurity**
> WorkspaceSecurity getWorkspaceSecurity()


### Example

```typescript
import {
    WorkspaceApi,
    Configuration
} from '@cosmotech/api-ts';

const configuration = new Configuration();
const apiInstance = new WorkspaceApi(configuration);

let organizationId: string; //the Organization identifier (default to undefined)
let workspaceId: string; //the Workspace identifier (default to undefined)

const { status, data } = await apiInstance.getWorkspaceSecurity(
    organizationId,
    workspaceId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **organizationId** | [**string**] | the Organization identifier | defaults to undefined|
| **workspaceId** | [**string**] | the Workspace identifier | defaults to undefined|


### Return type

**WorkspaceSecurity**

### Authorization

[oAuth2AuthCode](../README.md#oAuth2AuthCode)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | The Workspace security |  -  |
|**404** | the Workspace specified is unknown or you don\&#39;t have access to it |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getWorkspaceSecurityUsers**
> Array<string> getWorkspaceSecurityUsers()


### Example

```typescript
import {
    WorkspaceApi,
    Configuration
} from '@cosmotech/api-ts';

const configuration = new Configuration();
const apiInstance = new WorkspaceApi(configuration);

let organizationId: string; //the Organization identifier (default to undefined)
let workspaceId: string; //the Workspace identifier (default to undefined)

const { status, data } = await apiInstance.getWorkspaceSecurityUsers(
    organizationId,
    workspaceId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **organizationId** | [**string**] | the Organization identifier | defaults to undefined|
| **workspaceId** | [**string**] | the Workspace identifier | defaults to undefined|


### Return type

**Array<string>**

### Authorization

[oAuth2AuthCode](../README.md#oAuth2AuthCode)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | The Workspace security users list |  -  |
|**404** | the Workspace or the User specified is unknown or you don\&#39;t have access to them |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **linkDataset**
> Workspace linkDataset()


### Example

```typescript
import {
    WorkspaceApi,
    Configuration
} from '@cosmotech/api-ts';

const configuration = new Configuration();
const apiInstance = new WorkspaceApi(configuration);

let organizationId: string; //the Organization identifier (default to undefined)
let workspaceId: string; //the Workspace identifier (default to undefined)
let datasetId: string; //dataset id to be linked to (default to undefined)

const { status, data } = await apiInstance.linkDataset(
    organizationId,
    workspaceId,
    datasetId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **organizationId** | [**string**] | the Organization identifier | defaults to undefined|
| **workspaceId** | [**string**] | the Workspace identifier | defaults to undefined|
| **datasetId** | [**string**] | dataset id to be linked to | defaults to undefined|


### Return type

**Workspace**

### Authorization

[oAuth2AuthCode](../README.md#oAuth2AuthCode)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | the workspace details |  -  |
|**400** | Bad request |  -  |
|**404** | the workspace specified is unknown or you don\&#39;t have access to it |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **removeWorkspaceAccessControl**
> removeWorkspaceAccessControl()


### Example

```typescript
import {
    WorkspaceApi,
    Configuration
} from '@cosmotech/api-ts';

const configuration = new Configuration();
const apiInstance = new WorkspaceApi(configuration);

let organizationId: string; //the Organization identifier (default to undefined)
let workspaceId: string; //the Workspace identifier (default to undefined)
let identityId: string; //the User identifier (default to undefined)

const { status, data } = await apiInstance.removeWorkspaceAccessControl(
    organizationId,
    workspaceId,
    identityId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **organizationId** | [**string**] | the Organization identifier | defaults to undefined|
| **workspaceId** | [**string**] | the Workspace identifier | defaults to undefined|
| **identityId** | [**string**] | the User identifier | defaults to undefined|


### Return type

void (empty response body)

### Authorization

[oAuth2AuthCode](../README.md#oAuth2AuthCode)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**204** | Request succeeded |  -  |
|**404** | The Workspace or the user specified is unknown or you don\&#39;t have access to them |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **setWorkspaceDefaultSecurity**
> WorkspaceSecurity setWorkspaceDefaultSecurity(workspaceRole)


### Example

```typescript
import {
    WorkspaceApi,
    Configuration,
    WorkspaceRole
} from '@cosmotech/api-ts';

const configuration = new Configuration();
const apiInstance = new WorkspaceApi(configuration);

let organizationId: string; //the Organization identifier (default to undefined)
let workspaceId: string; //the Workspace identifier (default to undefined)
let workspaceRole: WorkspaceRole; //This change the workspace default security. The default security is the role assigned to any person not on the Access Control List. If the default security is None, then nobody outside of the ACL can access the workspace.

const { status, data } = await apiInstance.setWorkspaceDefaultSecurity(
    organizationId,
    workspaceId,
    workspaceRole
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **workspaceRole** | **WorkspaceRole**| This change the workspace default security. The default security is the role assigned to any person not on the Access Control List. If the default security is None, then nobody outside of the ACL can access the workspace. | |
| **organizationId** | [**string**] | the Organization identifier | defaults to undefined|
| **workspaceId** | [**string**] | the Workspace identifier | defaults to undefined|


### Return type

**WorkspaceSecurity**

### Authorization

[oAuth2AuthCode](../README.md#oAuth2AuthCode)

### HTTP request headers

 - **Content-Type**: application/json, application/yaml
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**201** | The Workspace default visibility |  -  |
|**404** | the Workspace specified is unknown or you don\&#39;t have access to it |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **unlinkDataset**
> Workspace unlinkDataset()


### Example

```typescript
import {
    WorkspaceApi,
    Configuration
} from '@cosmotech/api-ts';

const configuration = new Configuration();
const apiInstance = new WorkspaceApi(configuration);

let organizationId: string; //the Organization identifier (default to undefined)
let workspaceId: string; //the Workspace identifier (default to undefined)
let datasetId: string; //dataset id to be linked to (default to undefined)

const { status, data } = await apiInstance.unlinkDataset(
    organizationId,
    workspaceId,
    datasetId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **organizationId** | [**string**] | the Organization identifier | defaults to undefined|
| **workspaceId** | [**string**] | the Workspace identifier | defaults to undefined|
| **datasetId** | [**string**] | dataset id to be linked to | defaults to undefined|


### Return type

**Workspace**

### Authorization

[oAuth2AuthCode](../README.md#oAuth2AuthCode)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | the workspace details |  -  |
|**400** | Bad request |  -  |
|**404** | the Dataset specified is unknown or you don\&#39;t have access to it |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateWorkspace**
> Workspace updateWorkspace(workspace)


### Example

```typescript
import {
    WorkspaceApi,
    Configuration,
    Workspace
} from '@cosmotech/api-ts';

const configuration = new Configuration();
const apiInstance = new WorkspaceApi(configuration);

let organizationId: string; //the Organization identifier (default to undefined)
let workspaceId: string; //the Workspace identifier (default to undefined)
let workspace: Workspace; //The new Workspace details. This endpoint can\'t be used to update security

const { status, data } = await apiInstance.updateWorkspace(
    organizationId,
    workspaceId,
    workspace
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **workspace** | **Workspace**| The new Workspace details. This endpoint can\&#39;t be used to update security | |
| **organizationId** | [**string**] | the Organization identifier | defaults to undefined|
| **workspaceId** | [**string**] | the Workspace identifier | defaults to undefined|


### Return type

**Workspace**

### Authorization

[oAuth2AuthCode](../README.md#oAuth2AuthCode)

### HTTP request headers

 - **Content-Type**: application/json, application/yaml
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | the workspace details |  -  |
|**400** | Bad request |  -  |
|**404** | the Workspace specified is unknown or you don\&#39;t have access to it |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateWorkspaceAccessControl**
> WorkspaceAccessControl updateWorkspaceAccessControl(workspaceRole)


### Example

```typescript
import {
    WorkspaceApi,
    Configuration,
    WorkspaceRole
} from '@cosmotech/api-ts';

const configuration = new Configuration();
const apiInstance = new WorkspaceApi(configuration);

let organizationId: string; //the Organization identifier (default to undefined)
let workspaceId: string; //the Workspace identifier (default to undefined)
let identityId: string; //the User identifier (default to undefined)
let workspaceRole: WorkspaceRole; //The new Workspace Access Control

const { status, data } = await apiInstance.updateWorkspaceAccessControl(
    organizationId,
    workspaceId,
    identityId,
    workspaceRole
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **workspaceRole** | **WorkspaceRole**| The new Workspace Access Control | |
| **organizationId** | [**string**] | the Organization identifier | defaults to undefined|
| **workspaceId** | [**string**] | the Workspace identifier | defaults to undefined|
| **identityId** | [**string**] | the User identifier | defaults to undefined|


### Return type

**WorkspaceAccessControl**

### Authorization

[oAuth2AuthCode](../README.md#oAuth2AuthCode)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | The Workspace access |  -  |
|**404** | The Workspace specified is unknown or you don\&#39;t have access to it |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uploadWorkspaceFile**
> WorkspaceFile uploadWorkspaceFile()


### Example

```typescript
import {
    WorkspaceApi,
    Configuration
} from '@cosmotech/api-ts';

const configuration = new Configuration();
const apiInstance = new WorkspaceApi(configuration);

let organizationId: string; //the Organization identifier (default to undefined)
let workspaceId: string; //the Workspace identifier (default to undefined)
let file: File; // (default to undefined)
let overwrite: boolean; // (optional) (default to false)
let destination: string; //Destination path. Must end with a \\\'/\\\' if specifying a folder. Note that paths may or may not start with a \\\'/\\\', but they are always treated as relative to the Workspace root location.  (optional) (default to undefined)

const { status, data } = await apiInstance.uploadWorkspaceFile(
    organizationId,
    workspaceId,
    file,
    overwrite,
    destination
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **organizationId** | [**string**] | the Organization identifier | defaults to undefined|
| **workspaceId** | [**string**] | the Workspace identifier | defaults to undefined|
| **file** | [**File**] |  | defaults to undefined|
| **overwrite** | [**boolean**] |  | (optional) defaults to false|
| **destination** | [**string**] | Destination path. Must end with a \\\&#39;/\\\&#39; if specifying a folder. Note that paths may or may not start with a \\\&#39;/\\\&#39;, but they are always treated as relative to the Workspace root location.  | (optional) defaults to undefined|


### Return type

**WorkspaceFile**

### Authorization

[oAuth2AuthCode](../README.md#oAuth2AuthCode)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**201** | the file resource details |  -  |
|**400** | Bad request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

