# WorkspaceApi

All URIs are relative to *http://localhost:8080*

|Method | HTTP request | Description|
|------------- | ------------- | -------------|
|[**createWorkspace**](#createworkspace) | **POST** /organizations/{organization_id}/workspaces | Create a new workspace|
|[**createWorkspaceAccessControl**](#createworkspaceaccesscontrol) | **POST** /organizations/{organization_id}/workspaces/{workspace_id}/security/access | Add a control access to the Workspace|
|[**createWorkspaceFile**](#createworkspacefile) | **POST** /organizations/{organization_id}/workspaces/{workspace_id}/files | Upload a file for the Workspace|
|[**deleteWorkspace**](#deleteworkspace) | **DELETE** /organizations/{organization_id}/workspaces/{workspace_id} | Delete a workspace|
|[**deleteWorkspaceAccessControl**](#deleteworkspaceaccesscontrol) | **DELETE** /organizations/{organization_id}/workspaces/{workspace_id}/security/access/{identity_id} | Remove the specified access from the given Workspace|
|[**deleteWorkspaceFile**](#deleteworkspacefile) | **DELETE** /organizations/{organization_id}/workspaces/{workspace_id}/files/delete | Delete a workspace file|
|[**deleteWorkspaceFiles**](#deleteworkspacefiles) | **DELETE** /organizations/{organization_id}/workspaces/{workspace_id}/files | Delete all Workspace files|
|[**getWorkspace**](#getworkspace) | **GET** /organizations/{organization_id}/workspaces/{workspace_id} | Get the details of a workspace|
|[**getWorkspaceAccessControl**](#getworkspaceaccesscontrol) | **GET** /organizations/{organization_id}/workspaces/{workspace_id}/security/access/{identity_id} | Get a control access for the Workspace|
|[**getWorkspaceFile**](#getworkspacefile) | **GET** /organizations/{organization_id}/workspaces/{workspace_id}/files/download | Download the Workspace File specified|
|[**getWorkspaceSecurity**](#getworkspacesecurity) | **GET** /organizations/{organization_id}/workspaces/{workspace_id}/security | Get the Workspace security information|
|[**listWorkspaceFiles**](#listworkspacefiles) | **GET** /organizations/{organization_id}/workspaces/{workspace_id}/files | List all Workspace files|
|[**listWorkspaceRolePermissions**](#listworkspacerolepermissions) | **GET** /organizations/{organization_id}/workspaces/{workspace_id}/permissions/{role} | Get the Workspace permission by given role|
|[**listWorkspaceSecurityUsers**](#listworkspacesecurityusers) | **GET** /organizations/{organization_id}/workspaces/{workspace_id}/security/users | Get the Workspace security users list|
|[**listWorkspaces**](#listworkspaces) | **GET** /organizations/{organization_id}/workspaces | List all Workspaces|
|[**updateWorkspace**](#updateworkspace) | **PATCH** /organizations/{organization_id}/workspaces/{workspace_id} | Update a workspace|
|[**updateWorkspaceAccessControl**](#updateworkspaceaccesscontrol) | **PATCH** /organizations/{organization_id}/workspaces/{workspace_id}/security/access/{identity_id} | Update the specified access to User for a Workspace|
|[**updateWorkspaceDefaultSecurity**](#updateworkspacedefaultsecurity) | **PATCH** /organizations/{organization_id}/workspaces/{workspace_id}/security/default | Update the Workspace default security|

# **createWorkspace**
> Workspace createWorkspace(workspaceCreateRequest)


### Example

```typescript
import {
    WorkspaceApi,
    Configuration,
    WorkspaceCreateRequest
} from '@cosmotech/api-ts';

const configuration = new Configuration();
const apiInstance = new WorkspaceApi(configuration);

let organizationId: string; //The Organization identifier (default to undefined)
let workspaceCreateRequest: WorkspaceCreateRequest; //The Workspace to create

const { status, data } = await apiInstance.createWorkspace(
    organizationId,
    workspaceCreateRequest
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **workspaceCreateRequest** | **WorkspaceCreateRequest**| The Workspace to create | |
| **organizationId** | [**string**] | The Organization identifier | defaults to undefined|


### Return type

**Workspace**

### Authorization

[oAuth2AuthCode](../README.md#oAuth2AuthCode)

### HTTP request headers

 - **Content-Type**: application/json, application/yaml
 - **Accept**: application/json, application/yaml


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**201** | The workspace details |  -  |
|**400** | Bad request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createWorkspaceAccessControl**
> WorkspaceAccessControl createWorkspaceAccessControl(workspaceAccessControl)


### Example

```typescript
import {
    WorkspaceApi,
    Configuration,
    WorkspaceAccessControl
} from '@cosmotech/api-ts';

const configuration = new Configuration();
const apiInstance = new WorkspaceApi(configuration);

let organizationId: string; //The Organization identifier (default to undefined)
let workspaceId: string; //The Workspace identifier (default to undefined)
let workspaceAccessControl: WorkspaceAccessControl; //The new Workspace security access to add.

const { status, data } = await apiInstance.createWorkspaceAccessControl(
    organizationId,
    workspaceId,
    workspaceAccessControl
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **workspaceAccessControl** | **WorkspaceAccessControl**| The new Workspace security access to add. | |
| **organizationId** | [**string**] | The Organization identifier | defaults to undefined|
| **workspaceId** | [**string**] | The Workspace identifier | defaults to undefined|


### Return type

**WorkspaceAccessControl**

### Authorization

[oAuth2AuthCode](../README.md#oAuth2AuthCode)

### HTTP request headers

 - **Content-Type**: application/json, application/yaml
 - **Accept**: application/json, application/yaml


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**201** | The Workspace access |  -  |
|**404** | The Workspace specified is unknown or you don\&#39;t have access to it |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createWorkspaceFile**
> WorkspaceFile createWorkspaceFile()


### Example

```typescript
import {
    WorkspaceApi,
    Configuration
} from '@cosmotech/api-ts';

const configuration = new Configuration();
const apiInstance = new WorkspaceApi(configuration);

let organizationId: string; //The Organization identifier (default to undefined)
let workspaceId: string; //The Workspace identifier (default to undefined)
let file: File; //The file to upload (default to undefined)
let overwrite: boolean; //Whether to overwrite an existing file (optional) (default to false)
let destination: string; //Destination path. Must end with a \\\'/\\\' if specifying a folder. Note that paths may or may not start with a \\\'/\\\', but they are always treated as relative to the Workspace root location.  (optional) (default to undefined)

const { status, data } = await apiInstance.createWorkspaceFile(
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
| **organizationId** | [**string**] | The Organization identifier | defaults to undefined|
| **workspaceId** | [**string**] | The Workspace identifier | defaults to undefined|
| **file** | [**File**] | The file to upload | defaults to undefined|
| **overwrite** | [**boolean**] | Whether to overwrite an existing file | (optional) defaults to false|
| **destination** | [**string**] | Destination path. Must end with a \\\&#39;/\\\&#39; if specifying a folder. Note that paths may or may not start with a \\\&#39;/\\\&#39;, but they are always treated as relative to the Workspace root location.  | (optional) defaults to undefined|


### Return type

**WorkspaceFile**

### Authorization

[oAuth2AuthCode](../README.md#oAuth2AuthCode)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json, application/yaml


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**201** | The file resource details |  -  |
|**400** | Bad request |  -  |

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

let organizationId: string; //The Organization identifier (default to undefined)
let workspaceId: string; //The Workspace identifier (default to undefined)

const { status, data } = await apiInstance.deleteWorkspace(
    organizationId,
    workspaceId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **organizationId** | [**string**] | The Organization identifier | defaults to undefined|
| **workspaceId** | [**string**] | The Workspace identifier | defaults to undefined|


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
|**204** | The workspace details |  -  |
|**400** | Bad request |  -  |
|**404** | The Workspace specified is unknown or you don\&#39;t have access to it |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteWorkspaceAccessControl**
> deleteWorkspaceAccessControl()


### Example

```typescript
import {
    WorkspaceApi,
    Configuration
} from '@cosmotech/api-ts';

const configuration = new Configuration();
const apiInstance = new WorkspaceApi(configuration);

let organizationId: string; //The Organization identifier (default to undefined)
let workspaceId: string; //The Workspace identifier (default to undefined)
let identityId: string; //The User identifier (default to undefined)

const { status, data } = await apiInstance.deleteWorkspaceAccessControl(
    organizationId,
    workspaceId,
    identityId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **organizationId** | [**string**] | The Organization identifier | defaults to undefined|
| **workspaceId** | [**string**] | The Workspace identifier | defaults to undefined|
| **identityId** | [**string**] | The User identifier | defaults to undefined|


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

let organizationId: string; //The Organization identifier (default to undefined)
let workspaceId: string; //The Workspace identifier (default to undefined)
let fileName: string; //The file name (default to undefined)

const { status, data } = await apiInstance.deleteWorkspaceFile(
    organizationId,
    workspaceId,
    fileName
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **organizationId** | [**string**] | The Organization identifier | defaults to undefined|
| **workspaceId** | [**string**] | The Workspace identifier | defaults to undefined|
| **fileName** | [**string**] | The file name | defaults to undefined|


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
|**404** | The Workspace or the file specified is unknown or you don\&#39;t have access to them |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteWorkspaceFiles**
> deleteWorkspaceFiles()


### Example

```typescript
import {
    WorkspaceApi,
    Configuration
} from '@cosmotech/api-ts';

const configuration = new Configuration();
const apiInstance = new WorkspaceApi(configuration);

let organizationId: string; //The Organization identifier (default to undefined)
let workspaceId: string; //The Workspace identifier (default to undefined)

const { status, data } = await apiInstance.deleteWorkspaceFiles(
    organizationId,
    workspaceId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **organizationId** | [**string**] | The Organization identifier | defaults to undefined|
| **workspaceId** | [**string**] | The Workspace identifier | defaults to undefined|


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
|**404** | The Workspace specified is unknown or you don\&#39;t have access to them |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getWorkspace**
> Workspace getWorkspace()


### Example

```typescript
import {
    WorkspaceApi,
    Configuration
} from '@cosmotech/api-ts';

const configuration = new Configuration();
const apiInstance = new WorkspaceApi(configuration);

let organizationId: string; //The Organization identifier (default to undefined)
let workspaceId: string; //The Workspace identifier (default to undefined)

const { status, data } = await apiInstance.getWorkspace(
    organizationId,
    workspaceId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **organizationId** | [**string**] | The Organization identifier | defaults to undefined|
| **workspaceId** | [**string**] | The Workspace identifier | defaults to undefined|


### Return type

**Workspace**

### Authorization

[oAuth2AuthCode](../README.md#oAuth2AuthCode)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/yaml


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | The Workspace details |  -  |
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

let organizationId: string; //The Organization identifier (default to undefined)
let workspaceId: string; //The Workspace identifier (default to undefined)
let identityId: string; //The User identifier (default to undefined)

const { status, data } = await apiInstance.getWorkspaceAccessControl(
    organizationId,
    workspaceId,
    identityId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **organizationId** | [**string**] | The Organization identifier | defaults to undefined|
| **workspaceId** | [**string**] | The Workspace identifier | defaults to undefined|
| **identityId** | [**string**] | The User identifier | defaults to undefined|


### Return type

**WorkspaceAccessControl**

### Authorization

[oAuth2AuthCode](../README.md#oAuth2AuthCode)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/yaml


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | The Workspace access |  -  |
|**404** | The Workspace or user specified is unknown or you don\&#39;t have access to it |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getWorkspaceFile**
> File getWorkspaceFile()


### Example

```typescript
import {
    WorkspaceApi,
    Configuration
} from '@cosmotech/api-ts';

const configuration = new Configuration();
const apiInstance = new WorkspaceApi(configuration);

let organizationId: string; //The Organization identifier (default to undefined)
let workspaceId: string; //The Workspace identifier (default to undefined)
let fileName: string; //The file name (default to undefined)

const { status, data } = await apiInstance.getWorkspaceFile(
    organizationId,
    workspaceId,
    fileName
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **organizationId** | [**string**] | The Organization identifier | defaults to undefined|
| **workspaceId** | [**string**] | The Workspace identifier | defaults to undefined|
| **fileName** | [**string**] | The file name | defaults to undefined|


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
|**200** | The workspace file as a resource |  -  |
|**404** | The Workspace file specified is unknown or you don\&#39;t have access to it |  -  |

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

let organizationId: string; //The Organization identifier (default to undefined)
let workspaceId: string; //The Workspace identifier (default to undefined)

const { status, data } = await apiInstance.getWorkspaceSecurity(
    organizationId,
    workspaceId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **organizationId** | [**string**] | The Organization identifier | defaults to undefined|
| **workspaceId** | [**string**] | The Workspace identifier | defaults to undefined|


### Return type

**WorkspaceSecurity**

### Authorization

[oAuth2AuthCode](../README.md#oAuth2AuthCode)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/yaml


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | The Workspace security |  -  |
|**404** | The Workspace specified is unknown or you don\&#39;t have access to it |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listWorkspaceFiles**
> Array<WorkspaceFile> listWorkspaceFiles()


### Example

```typescript
import {
    WorkspaceApi,
    Configuration
} from '@cosmotech/api-ts';

const configuration = new Configuration();
const apiInstance = new WorkspaceApi(configuration);

let organizationId: string; //The Organization identifier (default to undefined)
let workspaceId: string; //The Workspace identifier (default to undefined)

const { status, data } = await apiInstance.listWorkspaceFiles(
    organizationId,
    workspaceId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **organizationId** | [**string**] | The Organization identifier | defaults to undefined|
| **workspaceId** | [**string**] | The Workspace identifier | defaults to undefined|


### Return type

**Array<WorkspaceFile>**

### Authorization

[oAuth2AuthCode](../README.md#oAuth2AuthCode)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/yaml


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | The workspace files |  -  |
|**404** | The Workspace specified is unknown or you don\&#39;t have access to it |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listWorkspaceRolePermissions**
> Array<string> listWorkspaceRolePermissions()


### Example

```typescript
import {
    WorkspaceApi,
    Configuration
} from '@cosmotech/api-ts';

const configuration = new Configuration();
const apiInstance = new WorkspaceApi(configuration);

let organizationId: string; //The Organization identifier (default to undefined)
let workspaceId: string; //The Workspace identifier (default to undefined)
let role: string; //The Role (default to undefined)

const { status, data } = await apiInstance.listWorkspaceRolePermissions(
    organizationId,
    workspaceId,
    role
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **organizationId** | [**string**] | The Organization identifier | defaults to undefined|
| **workspaceId** | [**string**] | The Workspace identifier | defaults to undefined|
| **role** | [**string**] | The Role | defaults to undefined|


### Return type

**Array<string>**

### Authorization

[oAuth2AuthCode](../README.md#oAuth2AuthCode)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/yaml


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | The Workspace security permission list |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listWorkspaceSecurityUsers**
> Array<string> listWorkspaceSecurityUsers()


### Example

```typescript
import {
    WorkspaceApi,
    Configuration
} from '@cosmotech/api-ts';

const configuration = new Configuration();
const apiInstance = new WorkspaceApi(configuration);

let organizationId: string; //The Organization identifier (default to undefined)
let workspaceId: string; //The Workspace identifier (default to undefined)

const { status, data } = await apiInstance.listWorkspaceSecurityUsers(
    organizationId,
    workspaceId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **organizationId** | [**string**] | The Organization identifier | defaults to undefined|
| **workspaceId** | [**string**] | The Workspace identifier | defaults to undefined|


### Return type

**Array<string>**

### Authorization

[oAuth2AuthCode](../README.md#oAuth2AuthCode)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/yaml


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | The Workspace security users list |  -  |
|**404** | The Workspace or the User specified is unknown or you don\&#39;t have access to them |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listWorkspaces**
> Array<Workspace> listWorkspaces()


### Example

```typescript
import {
    WorkspaceApi,
    Configuration
} from '@cosmotech/api-ts';

const configuration = new Configuration();
const apiInstance = new WorkspaceApi(configuration);

let organizationId: string; //The Organization identifier (default to undefined)
let page: number; //page number to query (first page is at index 0) (optional) (default to undefined)
let size: number; //Amount of result by page (optional) (default to undefined)

const { status, data } = await apiInstance.listWorkspaces(
    organizationId,
    page,
    size
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **organizationId** | [**string**] | The Organization identifier | defaults to undefined|
| **page** | [**number**] | page number to query (first page is at index 0) | (optional) defaults to undefined|
| **size** | [**number**] | Amount of result by page | (optional) defaults to undefined|


### Return type

**Array<Workspace>**

### Authorization

[oAuth2AuthCode](../README.md#oAuth2AuthCode)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/yaml


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | The workspace details |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateWorkspace**
> Workspace updateWorkspace(workspaceUpdateRequest)


### Example

```typescript
import {
    WorkspaceApi,
    Configuration,
    WorkspaceUpdateRequest
} from '@cosmotech/api-ts';

const configuration = new Configuration();
const apiInstance = new WorkspaceApi(configuration);

let organizationId: string; //The Organization identifier (default to undefined)
let workspaceId: string; //The Workspace identifier (default to undefined)
let workspaceUpdateRequest: WorkspaceUpdateRequest; //The new Workspace details. This endpoint can\'t be used to update security

const { status, data } = await apiInstance.updateWorkspace(
    organizationId,
    workspaceId,
    workspaceUpdateRequest
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **workspaceUpdateRequest** | **WorkspaceUpdateRequest**| The new Workspace details. This endpoint can\&#39;t be used to update security | |
| **organizationId** | [**string**] | The Organization identifier | defaults to undefined|
| **workspaceId** | [**string**] | The Workspace identifier | defaults to undefined|


### Return type

**Workspace**

### Authorization

[oAuth2AuthCode](../README.md#oAuth2AuthCode)

### HTTP request headers

 - **Content-Type**: application/json, application/yaml
 - **Accept**: application/json, application/yaml


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | The workspace details |  -  |
|**400** | Bad request |  -  |
|**404** | The Workspace specified is unknown or you don\&#39;t have access to it |  -  |

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

let organizationId: string; //The Organization identifier (default to undefined)
let workspaceId: string; //The Workspace identifier (default to undefined)
let identityId: string; //The User identifier (default to undefined)
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
| **organizationId** | [**string**] | The Organization identifier | defaults to undefined|
| **workspaceId** | [**string**] | The Workspace identifier | defaults to undefined|
| **identityId** | [**string**] | The User identifier | defaults to undefined|


### Return type

**WorkspaceAccessControl**

### Authorization

[oAuth2AuthCode](../README.md#oAuth2AuthCode)

### HTTP request headers

 - **Content-Type**: application/json, application/yaml
 - **Accept**: application/json, application/yaml


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | The Workspace access |  -  |
|**404** | The Workspace specified is unknown or you don\&#39;t have access to it |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateWorkspaceDefaultSecurity**
> WorkspaceSecurity updateWorkspaceDefaultSecurity(workspaceRole)


### Example

```typescript
import {
    WorkspaceApi,
    Configuration,
    WorkspaceRole
} from '@cosmotech/api-ts';

const configuration = new Configuration();
const apiInstance = new WorkspaceApi(configuration);

let organizationId: string; //The Organization identifier (default to undefined)
let workspaceId: string; //The Workspace identifier (default to undefined)
let workspaceRole: WorkspaceRole; //This change the workspace default security. The default security is the role assigned to any person not on the Access Control List. If the default security is None, then nobody outside of the ACL can access the workspace.

const { status, data } = await apiInstance.updateWorkspaceDefaultSecurity(
    organizationId,
    workspaceId,
    workspaceRole
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **workspaceRole** | **WorkspaceRole**| This change the workspace default security. The default security is the role assigned to any person not on the Access Control List. If the default security is None, then nobody outside of the ACL can access the workspace. | |
| **organizationId** | [**string**] | The Organization identifier | defaults to undefined|
| **workspaceId** | [**string**] | The Workspace identifier | defaults to undefined|


### Return type

**WorkspaceSecurity**

### Authorization

[oAuth2AuthCode](../README.md#oAuth2AuthCode)

### HTTP request headers

 - **Content-Type**: application/json, application/yaml
 - **Accept**: application/json, application/yaml


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**201** | The Workspace default visibility |  -  |
|**404** | The Workspace specified is unknown or you don\&#39;t have access to it |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

