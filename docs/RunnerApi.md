# RunnerApi

All URIs are relative to *http://localhost*

|Method | HTTP request | Description|
|------------- | ------------- | -------------|
|[**addRunnerAccessControl**](#addrunneraccesscontrol) | **POST** /organizations/{organization_id}/workspaces/{workspace_id}/runners/{runner_id}/security/access | Add a control access to the Runner|
|[**createRunner**](#createrunner) | **POST** /organizations/{organization_id}/workspaces/{workspace_id}/runners | Create a new Runner|
|[**deleteRunner**](#deleterunner) | **DELETE** /organizations/{organization_id}/workspaces/{workspace_id}/runners/{runner_id} | Delete a runner|
|[**getRunner**](#getrunner) | **GET** /organizations/{organization_id}/workspaces/{workspace_id}/runners/{runner_id} | Get the details of an runner|
|[**getRunnerAccessControl**](#getrunneraccesscontrol) | **GET** /organizations/{organization_id}/workspaces/{workspace_id}/runners/{runner_id}/security/access/{identity_id} | Get a control access for the Runner|
|[**getRunnerPermissions**](#getrunnerpermissions) | **GET** /organizations/{organization_id}/workspaces/{workspace_id}/runners/{runner_id}/permissions/{role} | Get the Runner permission by given role|
|[**getRunnerSecurity**](#getrunnersecurity) | **GET** /organizations/{organization_id}/workspaces/{workspace_id}/runners/{runner_id}/security | Get the Runner security information|
|[**getRunnerSecurityUsers**](#getrunnersecurityusers) | **GET** /organizations/{organization_id}/workspaces/{workspace_id}/runners/{runner_id}/security/users | Get the Runner security users list|
|[**listRunners**](#listrunners) | **GET** /organizations/{organization_id}/workspaces/{workspace_id}/runners | List all Runners|
|[**removeRunnerAccessControl**](#removerunneraccesscontrol) | **DELETE** /organizations/{organization_id}/workspaces/{workspace_id}/runners/{runner_id}/security/access/{identity_id} | Remove the specified access from the given Organization Runner|
|[**setRunnerDefaultSecurity**](#setrunnerdefaultsecurity) | **POST** /organizations/{organization_id}/workspaces/{workspace_id}/runners/{runner_id}/security/default | Set the Runner default security|
|[**startRun**](#startrun) | **POST** /organizations/{organization_id}/workspaces/{workspace_id}/runners/{runner_id}/start | Start a run with runner parameters|
|[**stopRun**](#stoprun) | **POST** /organizations/{organization_id}/workspaces/{workspace_id}/runners/{runner_id}/stop | Stop the last run|
|[**updateRunner**](#updaterunner) | **PATCH** /organizations/{organization_id}/workspaces/{workspace_id}/runners/{runner_id} | Update a runner|
|[**updateRunnerAccessControl**](#updaterunneraccesscontrol) | **PATCH** /organizations/{organization_id}/workspaces/{workspace_id}/runners/{runner_id}/security/access/{identity_id} | Update the specified access to User for a Runner|

# **addRunnerAccessControl**
> RunnerAccessControl addRunnerAccessControl(runnerAccessControl)


### Example

```typescript
import {
    RunnerApi,
    Configuration,
    RunnerAccessControl
} from '@cosmotech/api-ts';

const configuration = new Configuration();
const apiInstance = new RunnerApi(configuration);

let organizationId: string; //the Organization identifier (default to undefined)
let workspaceId: string; //the Workspace identifier (default to undefined)
let runnerId: string; //the Runner identifier (default to undefined)
let runnerAccessControl: RunnerAccessControl; //the new Runner security access to add.

const { status, data } = await apiInstance.addRunnerAccessControl(
    organizationId,
    workspaceId,
    runnerId,
    runnerAccessControl
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **runnerAccessControl** | **RunnerAccessControl**| the new Runner security access to add. | |
| **organizationId** | [**string**] | the Organization identifier | defaults to undefined|
| **workspaceId** | [**string**] | the Workspace identifier | defaults to undefined|
| **runnerId** | [**string**] | the Runner identifier | defaults to undefined|


### Return type

**RunnerAccessControl**

### Authorization

[oAuth2AuthCode](../README.md#oAuth2AuthCode)

### HTTP request headers

 - **Content-Type**: application/json, application/yaml
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**201** | The Runner access |  -  |
|**404** | the Runner specified is unknown or you don\&#39;t have access to it |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createRunner**
> Runner createRunner(runner)


### Example

```typescript
import {
    RunnerApi,
    Configuration,
    Runner
} from '@cosmotech/api-ts';

const configuration = new Configuration();
const apiInstance = new RunnerApi(configuration);

let organizationId: string; //the Organization identifier (default to undefined)
let workspaceId: string; //the Workspace identifier (default to undefined)
let runner: Runner; //the Runner to create

const { status, data } = await apiInstance.createRunner(
    organizationId,
    workspaceId,
    runner
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **runner** | **Runner**| the Runner to create | |
| **organizationId** | [**string**] | the Organization identifier | defaults to undefined|
| **workspaceId** | [**string**] | the Workspace identifier | defaults to undefined|


### Return type

**Runner**

### Authorization

[oAuth2AuthCode](../README.md#oAuth2AuthCode)

### HTTP request headers

 - **Content-Type**: application/json, application/yaml
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**201** | the runner details |  -  |
|**400** | Bad request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteRunner**
> deleteRunner()


### Example

```typescript
import {
    RunnerApi,
    Configuration
} from '@cosmotech/api-ts';

const configuration = new Configuration();
const apiInstance = new RunnerApi(configuration);

let organizationId: string; //the Organization identifier (default to undefined)
let workspaceId: string; //the Workspace identifier (default to undefined)
let runnerId: string; //the Runner identifier (default to undefined)

const { status, data } = await apiInstance.deleteRunner(
    organizationId,
    workspaceId,
    runnerId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **organizationId** | [**string**] | the Organization identifier | defaults to undefined|
| **workspaceId** | [**string**] | the Workspace identifier | defaults to undefined|
| **runnerId** | [**string**] | the Runner identifier | defaults to undefined|


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
|**404** | the Runner specified is unknown or you don\&#39;t have access to it |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getRunner**
> Runner getRunner()


### Example

```typescript
import {
    RunnerApi,
    Configuration
} from '@cosmotech/api-ts';

const configuration = new Configuration();
const apiInstance = new RunnerApi(configuration);

let organizationId: string; //the Organization identifier (default to undefined)
let workspaceId: string; //the Workspace identifier (default to undefined)
let runnerId: string; //the Runner identifier (default to undefined)

const { status, data } = await apiInstance.getRunner(
    organizationId,
    workspaceId,
    runnerId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **organizationId** | [**string**] | the Organization identifier | defaults to undefined|
| **workspaceId** | [**string**] | the Workspace identifier | defaults to undefined|
| **runnerId** | [**string**] | the Runner identifier | defaults to undefined|


### Return type

**Runner**

### Authorization

[oAuth2AuthCode](../README.md#oAuth2AuthCode)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | the Runner details |  -  |
|**404** | the Runner specified is unknown or you don\&#39;t have access to it |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getRunnerAccessControl**
> RunnerAccessControl getRunnerAccessControl()


### Example

```typescript
import {
    RunnerApi,
    Configuration
} from '@cosmotech/api-ts';

const configuration = new Configuration();
const apiInstance = new RunnerApi(configuration);

let organizationId: string; //the Organization identifier (default to undefined)
let workspaceId: string; //the Workspace identifier (default to undefined)
let runnerId: string; //the Runner identifier (default to undefined)
let identityId: string; //the User identifier (default to undefined)

const { status, data } = await apiInstance.getRunnerAccessControl(
    organizationId,
    workspaceId,
    runnerId,
    identityId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **organizationId** | [**string**] | the Organization identifier | defaults to undefined|
| **workspaceId** | [**string**] | the Workspace identifier | defaults to undefined|
| **runnerId** | [**string**] | the Runner identifier | defaults to undefined|
| **identityId** | [**string**] | the User identifier | defaults to undefined|


### Return type

**RunnerAccessControl**

### Authorization

[oAuth2AuthCode](../README.md#oAuth2AuthCode)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | The Runner access |  -  |
|**404** | the Runner or user specified is unknown or you don\&#39;t have access to it |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getRunnerPermissions**
> Array<string> getRunnerPermissions()


### Example

```typescript
import {
    RunnerApi,
    Configuration
} from '@cosmotech/api-ts';

const configuration = new Configuration();
const apiInstance = new RunnerApi(configuration);

let organizationId: string; //the Organization identifier (default to undefined)
let workspaceId: string; //the Workspace identifier (default to undefined)
let runnerId: string; //the Runner identifier (default to undefined)
let role: string; //the Role (default to undefined)

const { status, data } = await apiInstance.getRunnerPermissions(
    organizationId,
    workspaceId,
    runnerId,
    role
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **organizationId** | [**string**] | the Organization identifier | defaults to undefined|
| **workspaceId** | [**string**] | the Workspace identifier | defaults to undefined|
| **runnerId** | [**string**] | the Runner identifier | defaults to undefined|
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
|**200** | The Runners security permission list |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getRunnerSecurity**
> RunnerSecurity getRunnerSecurity()


### Example

```typescript
import {
    RunnerApi,
    Configuration
} from '@cosmotech/api-ts';

const configuration = new Configuration();
const apiInstance = new RunnerApi(configuration);

let organizationId: string; //the Organization identifier (default to undefined)
let workspaceId: string; //the Workspace identifier (default to undefined)
let runnerId: string; //the Runner identifier (default to undefined)

const { status, data } = await apiInstance.getRunnerSecurity(
    organizationId,
    workspaceId,
    runnerId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **organizationId** | [**string**] | the Organization identifier | defaults to undefined|
| **workspaceId** | [**string**] | the Workspace identifier | defaults to undefined|
| **runnerId** | [**string**] | the Runner identifier | defaults to undefined|


### Return type

**RunnerSecurity**

### Authorization

[oAuth2AuthCode](../README.md#oAuth2AuthCode)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | The Runner security |  -  |
|**404** | the Runner specified is unknown or you don\&#39;t have access to it |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getRunnerSecurityUsers**
> Array<string> getRunnerSecurityUsers()


### Example

```typescript
import {
    RunnerApi,
    Configuration
} from '@cosmotech/api-ts';

const configuration = new Configuration();
const apiInstance = new RunnerApi(configuration);

let organizationId: string; //the Organization identifier (default to undefined)
let workspaceId: string; //the Workspace identifier (default to undefined)
let runnerId: string; //the Runner identifier (default to undefined)

const { status, data } = await apiInstance.getRunnerSecurityUsers(
    organizationId,
    workspaceId,
    runnerId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **organizationId** | [**string**] | the Organization identifier | defaults to undefined|
| **workspaceId** | [**string**] | the Workspace identifier | defaults to undefined|
| **runnerId** | [**string**] | the Runner identifier | defaults to undefined|


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
|**200** | The Runner security users list |  -  |
|**404** | the Runner specified is unknown or you don\&#39;t have access to it |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listRunners**
> Array<Runner> listRunners()


### Example

```typescript
import {
    RunnerApi,
    Configuration
} from '@cosmotech/api-ts';

const configuration = new Configuration();
const apiInstance = new RunnerApi(configuration);

let organizationId: string; //the Organization identifier (default to undefined)
let workspaceId: string; //the Workspace identifier (default to undefined)
let page: number; //page number to query (first page is at index 0) (optional) (default to undefined)
let size: number; //amount of result by page (optional) (default to undefined)

const { status, data } = await apiInstance.listRunners(
    organizationId,
    workspaceId,
    page,
    size
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **organizationId** | [**string**] | the Organization identifier | defaults to undefined|
| **workspaceId** | [**string**] | the Workspace identifier | defaults to undefined|
| **page** | [**number**] | page number to query (first page is at index 0) | (optional) defaults to undefined|
| **size** | [**number**] | amount of result by page | (optional) defaults to undefined|


### Return type

**Array<Runner>**

### Authorization

[oAuth2AuthCode](../README.md#oAuth2AuthCode)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | the list of Runners |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **removeRunnerAccessControl**
> removeRunnerAccessControl()


### Example

```typescript
import {
    RunnerApi,
    Configuration
} from '@cosmotech/api-ts';

const configuration = new Configuration();
const apiInstance = new RunnerApi(configuration);

let organizationId: string; //the Organization identifier (default to undefined)
let workspaceId: string; //the Workspace identifier (default to undefined)
let runnerId: string; //the Runner identifier (default to undefined)
let identityId: string; //the User identifier (default to undefined)

const { status, data } = await apiInstance.removeRunnerAccessControl(
    organizationId,
    workspaceId,
    runnerId,
    identityId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **organizationId** | [**string**] | the Organization identifier | defaults to undefined|
| **workspaceId** | [**string**] | the Workspace identifier | defaults to undefined|
| **runnerId** | [**string**] | the Runner identifier | defaults to undefined|
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
|**404** | the Runner or the user specified is unknown or you don\&#39;t have access to them |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **setRunnerDefaultSecurity**
> RunnerSecurity setRunnerDefaultSecurity(runnerRole)


### Example

```typescript
import {
    RunnerApi,
    Configuration,
    RunnerRole
} from '@cosmotech/api-ts';

const configuration = new Configuration();
const apiInstance = new RunnerApi(configuration);

let organizationId: string; //the Organization identifier (default to undefined)
let workspaceId: string; //the Workspace identifier (default to undefined)
let runnerId: string; //the Runner identifier (default to undefined)
let runnerRole: RunnerRole; //This change the runner default security. The default security is the role assigned to any person not on the Access Control List. If the default security is None, then nobody outside of the ACL can access the runner.

const { status, data } = await apiInstance.setRunnerDefaultSecurity(
    organizationId,
    workspaceId,
    runnerId,
    runnerRole
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **runnerRole** | **RunnerRole**| This change the runner default security. The default security is the role assigned to any person not on the Access Control List. If the default security is None, then nobody outside of the ACL can access the runner. | |
| **organizationId** | [**string**] | the Organization identifier | defaults to undefined|
| **workspaceId** | [**string**] | the Workspace identifier | defaults to undefined|
| **runnerId** | [**string**] | the Runner identifier | defaults to undefined|


### Return type

**RunnerSecurity**

### Authorization

[oAuth2AuthCode](../README.md#oAuth2AuthCode)

### HTTP request headers

 - **Content-Type**: application/json, application/yaml
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**201** | The Runner default visibility |  -  |
|**404** | the Runner specified is unknown or you don\&#39;t have access to it |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **startRun**
> CreatedRun startRun()


### Example

```typescript
import {
    RunnerApi,
    Configuration
} from '@cosmotech/api-ts';

const configuration = new Configuration();
const apiInstance = new RunnerApi(configuration);

let organizationId: string; //the Organization identifier (default to undefined)
let workspaceId: string; //the Workspace identifier (default to undefined)
let runnerId: string; //the Runner identifier (default to undefined)

const { status, data } = await apiInstance.startRun(
    organizationId,
    workspaceId,
    runnerId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **organizationId** | [**string**] | the Organization identifier | defaults to undefined|
| **workspaceId** | [**string**] | the Workspace identifier | defaults to undefined|
| **runnerId** | [**string**] | the Runner identifier | defaults to undefined|


### Return type

**CreatedRun**

### Authorization

[oAuth2AuthCode](../README.md#oAuth2AuthCode)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**202** | the newly created Run info |  -  |
|**404** | the Runner specified is unknown or you don\&#39;t have access to it |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **stopRun**
> stopRun()


### Example

```typescript
import {
    RunnerApi,
    Configuration
} from '@cosmotech/api-ts';

const configuration = new Configuration();
const apiInstance = new RunnerApi(configuration);

let organizationId: string; //the Organization identifier (default to undefined)
let workspaceId: string; //the Workspace identifier (default to undefined)
let runnerId: string; //the Runner identifier (default to undefined)

const { status, data } = await apiInstance.stopRun(
    organizationId,
    workspaceId,
    runnerId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **organizationId** | [**string**] | the Organization identifier | defaults to undefined|
| **workspaceId** | [**string**] | the Workspace identifier | defaults to undefined|
| **runnerId** | [**string**] | the Runner identifier | defaults to undefined|


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
|**202** | the last Run has been stopped |  -  |
|**404** | the Runner specified is unknown or you don\&#39;t have access to it |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateRunner**
> Runner updateRunner(runner)


### Example

```typescript
import {
    RunnerApi,
    Configuration,
    Runner
} from '@cosmotech/api-ts';

const configuration = new Configuration();
const apiInstance = new RunnerApi(configuration);

let organizationId: string; //the Organization identifier (default to undefined)
let workspaceId: string; //the Workspace identifier (default to undefined)
let runnerId: string; //the Runner identifier (default to undefined)
let runner: Runner; //the new Runner details. This endpoint can\'t be used to update security

const { status, data } = await apiInstance.updateRunner(
    organizationId,
    workspaceId,
    runnerId,
    runner
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **runner** | **Runner**| the new Runner details. This endpoint can\&#39;t be used to update security | |
| **organizationId** | [**string**] | the Organization identifier | defaults to undefined|
| **workspaceId** | [**string**] | the Workspace identifier | defaults to undefined|
| **runnerId** | [**string**] | the Runner identifier | defaults to undefined|


### Return type

**Runner**

### Authorization

[oAuth2AuthCode](../README.md#oAuth2AuthCode)

### HTTP request headers

 - **Content-Type**: application/json, application/yaml
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | the runner details |  -  |
|**400** | Bad request |  -  |
|**404** | the Runner specified is unknown or you don\&#39;t have access to it |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateRunnerAccessControl**
> RunnerAccessControl updateRunnerAccessControl(runnerRole)


### Example

```typescript
import {
    RunnerApi,
    Configuration,
    RunnerRole
} from '@cosmotech/api-ts';

const configuration = new Configuration();
const apiInstance = new RunnerApi(configuration);

let organizationId: string; //the Organization identifier (default to undefined)
let workspaceId: string; //the Workspace identifier (default to undefined)
let runnerId: string; //the Runner identifier (default to undefined)
let identityId: string; //the User identifier (default to undefined)
let runnerRole: RunnerRole; //The new Runner Access Control

const { status, data } = await apiInstance.updateRunnerAccessControl(
    organizationId,
    workspaceId,
    runnerId,
    identityId,
    runnerRole
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **runnerRole** | **RunnerRole**| The new Runner Access Control | |
| **organizationId** | [**string**] | the Organization identifier | defaults to undefined|
| **workspaceId** | [**string**] | the Workspace identifier | defaults to undefined|
| **runnerId** | [**string**] | the Runner identifier | defaults to undefined|
| **identityId** | [**string**] | the User identifier | defaults to undefined|


### Return type

**RunnerAccessControl**

### Authorization

[oAuth2AuthCode](../README.md#oAuth2AuthCode)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | The Runner access |  -  |
|**404** | The Organization specified is unknown or you don\&#39;t have access to it |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

