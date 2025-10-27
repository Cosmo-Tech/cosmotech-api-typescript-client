# RunApi

All URIs are relative to *http://localhost:8080*

|Method | HTTP request | Description|
|------------- | ------------- | -------------|
|[**deleteRun**](#deleterun) | **DELETE** /organizations/{organization_id}/workspaces/{workspace_id}/runners/{runner_id}/runs/{run_id} | Delete a run|
|[**getRun**](#getrun) | **GET** /organizations/{organization_id}/workspaces/{workspace_id}/runners/{runner_id}/runs/{run_id} | Get the details of a run|
|[**getRunLogs**](#getrunlogs) | **GET** /organizations/{organization_id}/workspaces/{workspace_id}/runners/{runner_id}/runs/{run_id}/logs | get the logs for the Run|
|[**getRunStatus**](#getrunstatus) | **GET** /organizations/{organization_id}/workspaces/{workspace_id}/runners/{runner_id}/runs/{run_id}/status | get the status for the Run|
|[**listRuns**](#listruns) | **GET** /organizations/{organization_id}/workspaces/{workspace_id}/runners/{runner_id}/runs | get the list of Runs for the Runner|

# **deleteRun**
> deleteRun()


### Example

```typescript
import {
    RunApi,
    Configuration
} from '@cosmotech/api-ts';

const configuration = new Configuration();
const apiInstance = new RunApi(configuration);

let organizationId: string; //the Organization identifier (default to undefined)
let workspaceId: string; //the Workspace identifier (default to undefined)
let runnerId: string; //the Runner identifier (default to undefined)
let runId: string; //the Run identifier (default to undefined)

const { status, data } = await apiInstance.deleteRun(
    organizationId,
    workspaceId,
    runnerId,
    runId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **organizationId** | [**string**] | the Organization identifier | defaults to undefined|
| **workspaceId** | [**string**] | the Workspace identifier | defaults to undefined|
| **runnerId** | [**string**] | the Runner identifier | defaults to undefined|
| **runId** | [**string**] | the Run identifier | defaults to undefined|


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
|**400** | Bad request |  -  |
|**404** | the Run specified is unknown or you don\&#39;t have access to it |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getRun**
> Run getRun()


### Example

```typescript
import {
    RunApi,
    Configuration
} from '@cosmotech/api-ts';

const configuration = new Configuration();
const apiInstance = new RunApi(configuration);

let organizationId: string; //the Organization identifier (default to undefined)
let workspaceId: string; //the Workspace identifier (default to undefined)
let runnerId: string; //the Runner identifier (default to undefined)
let runId: string; //the Run identifier (default to undefined)

const { status, data } = await apiInstance.getRun(
    organizationId,
    workspaceId,
    runnerId,
    runId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **organizationId** | [**string**] | the Organization identifier | defaults to undefined|
| **workspaceId** | [**string**] | the Workspace identifier | defaults to undefined|
| **runnerId** | [**string**] | the Runner identifier | defaults to undefined|
| **runId** | [**string**] | the Run identifier | defaults to undefined|


### Return type

**Run**

### Authorization

[oAuth2AuthCode](../README.md#oAuth2AuthCode)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/yaml


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | the Run details |  -  |
|**404** | the Run specified is unknown or you don\&#39;t have access to it |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getRunLogs**
> string getRunLogs()


### Example

```typescript
import {
    RunApi,
    Configuration
} from '@cosmotech/api-ts';

const configuration = new Configuration();
const apiInstance = new RunApi(configuration);

let organizationId: string; //the Organization identifier (default to undefined)
let workspaceId: string; //the Workspace identifier (default to undefined)
let runnerId: string; //the Runner identifier (default to undefined)
let runId: string; //the Run identifier (default to undefined)

const { status, data } = await apiInstance.getRunLogs(
    organizationId,
    workspaceId,
    runnerId,
    runId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **organizationId** | [**string**] | the Organization identifier | defaults to undefined|
| **workspaceId** | [**string**] | the Workspace identifier | defaults to undefined|
| **runnerId** | [**string**] | the Runner identifier | defaults to undefined|
| **runId** | [**string**] | the Run identifier | defaults to undefined|


### Return type

**string**

### Authorization

[oAuth2AuthCode](../README.md#oAuth2AuthCode)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | the run logs details |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getRunStatus**
> RunStatus getRunStatus()


### Example

```typescript
import {
    RunApi,
    Configuration
} from '@cosmotech/api-ts';

const configuration = new Configuration();
const apiInstance = new RunApi(configuration);

let organizationId: string; //the Organization identifier (default to undefined)
let workspaceId: string; //the Workspace identifier (default to undefined)
let runnerId: string; //the Runner identifier (default to undefined)
let runId: string; //the Run identifier (default to undefined)

const { status, data } = await apiInstance.getRunStatus(
    organizationId,
    workspaceId,
    runnerId,
    runId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **organizationId** | [**string**] | the Organization identifier | defaults to undefined|
| **workspaceId** | [**string**] | the Workspace identifier | defaults to undefined|
| **runnerId** | [**string**] | the Runner identifier | defaults to undefined|
| **runId** | [**string**] | the Run identifier | defaults to undefined|


### Return type

**RunStatus**

### Authorization

[oAuth2AuthCode](../README.md#oAuth2AuthCode)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/yaml


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | the run status details |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listRuns**
> Array<Run> listRuns()


### Example

```typescript
import {
    RunApi,
    Configuration
} from '@cosmotech/api-ts';

const configuration = new Configuration();
const apiInstance = new RunApi(configuration);

let organizationId: string; //the Organization identifier (default to undefined)
let workspaceId: string; //the Workspace identifier (default to undefined)
let runnerId: string; //the Runner identifier (default to undefined)
let page: number; //page number to query (first page is at index 0) (optional) (default to undefined)
let size: number; //amount of result by page (optional) (default to undefined)

const { status, data } = await apiInstance.listRuns(
    organizationId,
    workspaceId,
    runnerId,
    page,
    size
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **organizationId** | [**string**] | the Organization identifier | defaults to undefined|
| **workspaceId** | [**string**] | the Workspace identifier | defaults to undefined|
| **runnerId** | [**string**] | the Runner identifier | defaults to undefined|
| **page** | [**number**] | page number to query (first page is at index 0) | (optional) defaults to undefined|
| **size** | [**number**] | amount of result by page | (optional) defaults to undefined|


### Return type

**Array<Run>**

### Authorization

[oAuth2AuthCode](../README.md#oAuth2AuthCode)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/yaml


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | the run details list |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

