# DatasetApi

All URIs are relative to *http://localhost:8080*

|Method | HTTP request | Description|
|------------- | ------------- | -------------|
|[**createDataset**](#createdataset) | **POST** /organizations/{organization_id}/workspaces/{workspace_id}/datasets | Create a Dataset|
|[**createDatasetAccessControl**](#createdatasetaccesscontrol) | **POST** /organizations/{organization_id}/workspaces/{workspace_id}/datasets/{dataset_id}/security/access | Add a control access to the Dataset|
|[**createDatasetPart**](#createdatasetpart) | **POST** /organizations/{organization_id}/workspaces/{workspace_id}/datasets/{dataset_id}/parts | Create a data part of a Dataset|
|[**deleteDataset**](#deletedataset) | **DELETE** /organizations/{organization_id}/workspaces/{workspace_id}/datasets/{dataset_id} | Delete a Dataset|
|[**deleteDatasetAccessControl**](#deletedatasetaccesscontrol) | **DELETE** /organizations/{organization_id}/workspaces/{workspace_id}/datasets/{dataset_id}/security/access/{identity_id} | Remove the specified access from the given Dataset|
|[**deleteDatasetPart**](#deletedatasetpart) | **DELETE** /organizations/{organization_id}/workspaces/{workspace_id}/datasets/{dataset_id}/parts/{dataset_part_id} | Delete a Dataset part|
|[**downloadDatasetPart**](#downloaddatasetpart) | **GET** /organizations/{organization_id}/workspaces/{workspace_id}/datasets/{dataset_id}/parts/{dataset_part_id}/download | Download data from a dataset part|
|[**getDataset**](#getdataset) | **GET** /organizations/{organization_id}/workspaces/{workspace_id}/datasets/{dataset_id} | Retrieve a Dataset|
|[**getDatasetAccessControl**](#getdatasetaccesscontrol) | **GET** /organizations/{organization_id}/workspaces/{workspace_id}/datasets/{dataset_id}/security/access/{identity_id} | Get a control access for the Dataset|
|[**getDatasetPart**](#getdatasetpart) | **GET** /organizations/{organization_id}/workspaces/{workspace_id}/datasets/{dataset_id}/parts/{dataset_part_id} | Retrieve a data part of a Dataset|
|[**listDatasetParts**](#listdatasetparts) | **GET** /organizations/{organization_id}/workspaces/{workspace_id}/datasets/{dataset_id}/parts | Retrieve all dataset parts of a Dataset|
|[**listDatasetSecurityUsers**](#listdatasetsecurityusers) | **GET** /organizations/{organization_id}/workspaces/{workspace_id}/datasets/{dataset_id}/security/users | Get the Dataset security users list|
|[**listDatasets**](#listdatasets) | **GET** /organizations/{organization_id}/workspaces/{workspace_id}/datasets | Retrieve a list of defined Dataset|
|[**queryData**](#querydata) | **GET** /organizations/{organization_id}/workspaces/{workspace_id}/datasets/{dataset_id}/parts/{dataset_part_id}/query | Query data of a Dataset part. This endpoint is only available for dataset parts that support queries (type &#x3D;&#x3D; DB). |
|[**replaceDatasetPart**](#replacedatasetpart) | **PUT** /organizations/{organization_id}/workspaces/{workspace_id}/datasets/{dataset_id}/parts/{dataset_part_id} | Replace existing dataset parts of a Dataset|
|[**searchDatasetParts**](#searchdatasetparts) | **POST** /organizations/{organization_id}/workspaces/{workspace_id}/datasets/{dataset_id}/parts/search | Search Dataset parts by tags|
|[**searchDatasets**](#searchdatasets) | **POST** /organizations/{organization_id}/workspaces/{workspace_id}/datasets/search | Search Datasets by tags|
|[**updateDataset**](#updatedataset) | **PATCH** /organizations/{organization_id}/workspaces/{workspace_id}/datasets/{dataset_id} | Update a Dataset|
|[**updateDatasetAccessControl**](#updatedatasetaccesscontrol) | **PATCH** /organizations/{organization_id}/workspaces/{workspace_id}/datasets/{dataset_id}/security/access/{identity_id} | Update the specified access to User for a Dataset|
|[**updateDatasetDefaultSecurity**](#updatedatasetdefaultsecurity) | **PATCH** /organizations/{organization_id}/workspaces/{workspace_id}/datasets/{dataset_id}/security/default | Set the Dataset default security|
|[**updateDatasetPart**](#updatedatasetpart) | **PATCH** /organizations/{organization_id}/workspaces/{workspace_id}/datasets/{dataset_id}/parts/{dataset_part_id} | Update existing dataset parts information of a Dataset|

# **createDataset**
> Dataset createDataset()


### Example

```typescript
import {
    DatasetApi,
    Configuration,
    DatasetCreateRequest
} from '@cosmotech/api-ts';

const configuration = new Configuration();
const apiInstance = new DatasetApi(configuration);

let organizationId: string; //the Organization identifier (default to undefined)
let workspaceId: string; //the Workspace identifier (default to undefined)
let datasetCreateRequest: DatasetCreateRequest; // (default to undefined)
let files: Array<File>; //Notes:   - Each parts defined in dataset should have a file defined in this list   - Please ensure that upload files order match with data parts list defined     - First file uploaded will match with first dataset parts and so on  (optional) (default to undefined)

const { status, data } = await apiInstance.createDataset(
    organizationId,
    workspaceId,
    datasetCreateRequest,
    files
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **organizationId** | [**string**] | the Organization identifier | defaults to undefined|
| **workspaceId** | [**string**] | the Workspace identifier | defaults to undefined|
| **datasetCreateRequest** | **DatasetCreateRequest** |  | defaults to undefined|
| **files** | **Array&lt;File&gt;** | Notes:   - Each parts defined in dataset should have a file defined in this list   - Please ensure that upload files order match with data parts list defined     - First file uploaded will match with first dataset parts and so on  | (optional) defaults to undefined|


### Return type

**Dataset**

### Authorization

[oAuth2AuthCode](../README.md#oAuth2AuthCode)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json, application/yaml


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**201** | Dataset successfully created |  -  |
|**400** | Bad request |  -  |
|**403** | Insufficient permissions on organization, workspace or dataset |  -  |
|**404** | Organization, workspace specified is not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createDatasetAccessControl**
> DatasetAccessControl createDatasetAccessControl(datasetAccessControl)


### Example

```typescript
import {
    DatasetApi,
    Configuration,
    DatasetAccessControl
} from '@cosmotech/api-ts';

const configuration = new Configuration();
const apiInstance = new DatasetApi(configuration);

let organizationId: string; //the Organization identifier (default to undefined)
let workspaceId: string; //the Workspace identifier (default to undefined)
let datasetId: string; //the Dataset identifier (default to undefined)
let datasetAccessControl: DatasetAccessControl; //the new Dataset security access to add.

const { status, data } = await apiInstance.createDatasetAccessControl(
    organizationId,
    workspaceId,
    datasetId,
    datasetAccessControl
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **datasetAccessControl** | **DatasetAccessControl**| the new Dataset security access to add. | |
| **organizationId** | [**string**] | the Organization identifier | defaults to undefined|
| **workspaceId** | [**string**] | the Workspace identifier | defaults to undefined|
| **datasetId** | [**string**] | the Dataset identifier | defaults to undefined|


### Return type

**DatasetAccessControl**

### Authorization

[oAuth2AuthCode](../README.md#oAuth2AuthCode)

### HTTP request headers

 - **Content-Type**: application/json, application/yaml
 - **Accept**: application/json, application/yaml


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**201** | The Dataset access |  -  |
|**404** | the Dataset specified is unknown or you don\&#39;t have access to it |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createDatasetPart**
> DatasetPart createDatasetPart()


### Example

```typescript
import {
    DatasetApi,
    Configuration,
    DatasetPartCreateRequest
} from '@cosmotech/api-ts';

const configuration = new Configuration();
const apiInstance = new DatasetApi(configuration);

let organizationId: string; //the Organization identifier (default to undefined)
let workspaceId: string; //the Workspace identifier (default to undefined)
let datasetId: string; //the Dataset identifier (default to undefined)
let file: File; //Data file to upload (default to undefined)
let datasetPartCreateRequest: DatasetPartCreateRequest; // (default to undefined)

const { status, data } = await apiInstance.createDatasetPart(
    organizationId,
    workspaceId,
    datasetId,
    file,
    datasetPartCreateRequest
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **organizationId** | [**string**] | the Organization identifier | defaults to undefined|
| **workspaceId** | [**string**] | the Workspace identifier | defaults to undefined|
| **datasetId** | [**string**] | the Dataset identifier | defaults to undefined|
| **file** | [**File**] | Data file to upload | defaults to undefined|
| **datasetPartCreateRequest** | **DatasetPartCreateRequest** |  | defaults to undefined|


### Return type

**DatasetPart**

### Authorization

[oAuth2AuthCode](../README.md#oAuth2AuthCode)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json, application/yaml


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**201** | Dataset part successfully created |  -  |
|**400** | Bad request - Dataset part cannot be created |  -  |
|**403** | Insufficient permissions on organization, workspace or dataset |  -  |
|**404** | Dataset specified is not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteDataset**
> deleteDataset()

Delete a dataset

### Example

```typescript
import {
    DatasetApi,
    Configuration
} from '@cosmotech/api-ts';

const configuration = new Configuration();
const apiInstance = new DatasetApi(configuration);

let organizationId: string; //the Organization identifier (default to undefined)
let workspaceId: string; //the Workspace identifier (default to undefined)
let datasetId: string; //the Dataset identifier (default to undefined)

const { status, data } = await apiInstance.deleteDataset(
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
| **datasetId** | [**string**] | the Dataset identifier | defaults to undefined|


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
|**204** | Dataset successfully deleted |  -  |
|**403** | Insufficient permissions on organization, workspace or dataset |  -  |
|**404** | Organization or workspace or dataset specified is not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteDatasetAccessControl**
> deleteDatasetAccessControl()


### Example

```typescript
import {
    DatasetApi,
    Configuration
} from '@cosmotech/api-ts';

const configuration = new Configuration();
const apiInstance = new DatasetApi(configuration);

let organizationId: string; //the Organization identifier (default to undefined)
let workspaceId: string; //the Workspace identifier (default to undefined)
let datasetId: string; //the Dataset identifier (default to undefined)
let identityId: string; //the User identifier (default to undefined)

const { status, data } = await apiInstance.deleteDatasetAccessControl(
    organizationId,
    workspaceId,
    datasetId,
    identityId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **organizationId** | [**string**] | the Organization identifier | defaults to undefined|
| **workspaceId** | [**string**] | the Workspace identifier | defaults to undefined|
| **datasetId** | [**string**] | the Dataset identifier | defaults to undefined|
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
|**404** | The Dataset or the user specified is unknown or you don\&#39;t have access to them |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteDatasetPart**
> deleteDatasetPart()

Delete a dataset part

### Example

```typescript
import {
    DatasetApi,
    Configuration
} from '@cosmotech/api-ts';

const configuration = new Configuration();
const apiInstance = new DatasetApi(configuration);

let organizationId: string; //the Organization identifier (default to undefined)
let workspaceId: string; //the Workspace identifier (default to undefined)
let datasetId: string; //the Dataset identifier (default to undefined)
let datasetPartId: string; //the Dataset part identifier (default to undefined)

const { status, data } = await apiInstance.deleteDatasetPart(
    organizationId,
    workspaceId,
    datasetId,
    datasetPartId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **organizationId** | [**string**] | the Organization identifier | defaults to undefined|
| **workspaceId** | [**string**] | the Workspace identifier | defaults to undefined|
| **datasetId** | [**string**] | the Dataset identifier | defaults to undefined|
| **datasetPartId** | [**string**] | the Dataset part identifier | defaults to undefined|


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
|**204** | Dataset part successfully deleted |  -  |
|**403** | Insufficient permissions on organization, workspace or dataset |  -  |
|**404** | Dataset part specified is not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **downloadDatasetPart**
> File downloadDatasetPart()


### Example

```typescript
import {
    DatasetApi,
    Configuration
} from '@cosmotech/api-ts';

const configuration = new Configuration();
const apiInstance = new DatasetApi(configuration);

let organizationId: string; //the Organization identifier (default to undefined)
let workspaceId: string; //the Workspace identifier (default to undefined)
let datasetId: string; //the Dataset identifier (default to undefined)
let datasetPartId: string; //the Dataset part identifier (default to undefined)

const { status, data } = await apiInstance.downloadDatasetPart(
    organizationId,
    workspaceId,
    datasetId,
    datasetPartId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **organizationId** | [**string**] | the Organization identifier | defaults to undefined|
| **workspaceId** | [**string**] | the Workspace identifier | defaults to undefined|
| **datasetId** | [**string**] | the Dataset identifier | defaults to undefined|
| **datasetPartId** | [**string**] | the Dataset part identifier | defaults to undefined|


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
|**200** | Dataset part successfully downloaded |  -  |
|**403** | Insufficient permissions on organization, workspace or dataset |  -  |
|**404** | Dataset part specified is not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDataset**
> Dataset getDataset()

Retrieve a dataset

### Example

```typescript
import {
    DatasetApi,
    Configuration
} from '@cosmotech/api-ts';

const configuration = new Configuration();
const apiInstance = new DatasetApi(configuration);

let organizationId: string; //the Organization identifier (default to undefined)
let workspaceId: string; //the Workspace identifier (default to undefined)
let datasetId: string; //the Dataset identifier (default to undefined)

const { status, data } = await apiInstance.getDataset(
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
| **datasetId** | [**string**] | the Dataset identifier | defaults to undefined|


### Return type

**Dataset**

### Authorization

[oAuth2AuthCode](../README.md#oAuth2AuthCode)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/yaml


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Dataset successfully retrieved |  -  |
|**403** | Insufficient permissions on organization, workspace or dataset |  -  |
|**404** | Organization, workspace or dataset specified is not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDatasetAccessControl**
> DatasetAccessControl getDatasetAccessControl()


### Example

```typescript
import {
    DatasetApi,
    Configuration
} from '@cosmotech/api-ts';

const configuration = new Configuration();
const apiInstance = new DatasetApi(configuration);

let organizationId: string; //the Organization identifier (default to undefined)
let workspaceId: string; //the Workspace identifier (default to undefined)
let datasetId: string; //the Dataset identifier (default to undefined)
let identityId: string; //the User identifier (default to undefined)

const { status, data } = await apiInstance.getDatasetAccessControl(
    organizationId,
    workspaceId,
    datasetId,
    identityId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **organizationId** | [**string**] | the Organization identifier | defaults to undefined|
| **workspaceId** | [**string**] | the Workspace identifier | defaults to undefined|
| **datasetId** | [**string**] | the Dataset identifier | defaults to undefined|
| **identityId** | [**string**] | the User identifier | defaults to undefined|


### Return type

**DatasetAccessControl**

### Authorization

[oAuth2AuthCode](../README.md#oAuth2AuthCode)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/yaml


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | The Dataset access |  -  |
|**404** | The Dataset or user specified is unknown or you don\&#39;t have access to it |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDatasetPart**
> DatasetPart getDatasetPart()


### Example

```typescript
import {
    DatasetApi,
    Configuration
} from '@cosmotech/api-ts';

const configuration = new Configuration();
const apiInstance = new DatasetApi(configuration);

let organizationId: string; //the Organization identifier (default to undefined)
let workspaceId: string; //the Workspace identifier (default to undefined)
let datasetId: string; //the Dataset identifier (default to undefined)
let datasetPartId: string; //the Dataset part identifier (default to undefined)

const { status, data } = await apiInstance.getDatasetPart(
    organizationId,
    workspaceId,
    datasetId,
    datasetPartId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **organizationId** | [**string**] | the Organization identifier | defaults to undefined|
| **workspaceId** | [**string**] | the Workspace identifier | defaults to undefined|
| **datasetId** | [**string**] | the Dataset identifier | defaults to undefined|
| **datasetPartId** | [**string**] | the Dataset part identifier | defaults to undefined|


### Return type

**DatasetPart**

### Authorization

[oAuth2AuthCode](../README.md#oAuth2AuthCode)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/yaml


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Dataset part successfully retrieved |  -  |
|**403** | Insufficient permissions on organization, workspace or dataset |  -  |
|**404** | Dataset part specified is not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listDatasetParts**
> Array<DatasetPart> listDatasetParts()


### Example

```typescript
import {
    DatasetApi,
    Configuration
} from '@cosmotech/api-ts';

const configuration = new Configuration();
const apiInstance = new DatasetApi(configuration);

let organizationId: string; //the Organization identifier (default to undefined)
let workspaceId: string; //the Workspace identifier (default to undefined)
let datasetId: string; //the Dataset identifier (default to undefined)
let page: number; //Page number to query (first page is at index 0) (optional) (default to undefined)
let size: number; //Amount of result by page (optional) (default to undefined)

const { status, data } = await apiInstance.listDatasetParts(
    organizationId,
    workspaceId,
    datasetId,
    page,
    size
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **organizationId** | [**string**] | the Organization identifier | defaults to undefined|
| **workspaceId** | [**string**] | the Workspace identifier | defaults to undefined|
| **datasetId** | [**string**] | the Dataset identifier | defaults to undefined|
| **page** | [**number**] | Page number to query (first page is at index 0) | (optional) defaults to undefined|
| **size** | [**number**] | Amount of result by page | (optional) defaults to undefined|


### Return type

**Array<DatasetPart>**

### Authorization

[oAuth2AuthCode](../README.md#oAuth2AuthCode)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/yaml


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | List of dataset parts |  -  |
|**403** | Insufficient permissions on organization, workspace or dataset |  -  |
|**404** | Dataset specified is not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listDatasetSecurityUsers**
> Array<string> listDatasetSecurityUsers()


### Example

```typescript
import {
    DatasetApi,
    Configuration
} from '@cosmotech/api-ts';

const configuration = new Configuration();
const apiInstance = new DatasetApi(configuration);

let organizationId: string; //the Organization identifier (default to undefined)
let workspaceId: string; //the Workspace identifier (default to undefined)
let datasetId: string; //the Dataset identifier (default to undefined)

const { status, data } = await apiInstance.listDatasetSecurityUsers(
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
| **datasetId** | [**string**] | the Dataset identifier | defaults to undefined|


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
|**200** | The Dataset security users list |  -  |
|**404** | the Dataset or the User specified is unknown or you don\&#39;t have access to them |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listDatasets**
> Array<Dataset> listDatasets()

List all datasets

### Example

```typescript
import {
    DatasetApi,
    Configuration
} from '@cosmotech/api-ts';

const configuration = new Configuration();
const apiInstance = new DatasetApi(configuration);

let organizationId: string; //the Organization identifier (default to undefined)
let workspaceId: string; //the Workspace identifier (default to undefined)
let page: number; //Page number to query (first page is at index 0) (optional) (default to undefined)
let size: number; //Amount of result by page (optional) (default to undefined)

const { status, data } = await apiInstance.listDatasets(
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
| **page** | [**number**] | Page number to query (first page is at index 0) | (optional) defaults to undefined|
| **size** | [**number**] | Amount of result by page | (optional) defaults to undefined|


### Return type

**Array<Dataset>**

### Authorization

[oAuth2AuthCode](../README.md#oAuth2AuthCode)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/yaml


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Datasets successfully retrieved |  -  |
|**403** | Insufficient permissions on organization, workspace or dataset |  -  |
|**404** | Organization, workspace or dataset specified is not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **queryData**
> File queryData()


### Example

```typescript
import {
    DatasetApi,
    Configuration
} from '@cosmotech/api-ts';

const configuration = new Configuration();
const apiInstance = new DatasetApi(configuration);

let organizationId: string; //the Organization identifier (default to undefined)
let workspaceId: string; //the Workspace identifier (default to undefined)
let datasetId: string; //the Dataset identifier (default to undefined)
let datasetPartId: string; //the Dataset part identifier (default to undefined)
let selects: Array<string>; //Column names that should be part of the response data. You can specify a column name like:  - id  - stock  - quantity  - ... If you want to select only distinct columns, add a \'*\' at the end of the column name (e.g. stock*).  (optional) (default to undefined)
let sums: Array<string>; //Column names to sum by. If you want to sum only distinct columns, add a \'*\' at the end of the column name (e.g. stock*).  (optional) (default to undefined)
let avgs: Array<string>; //Column names to average by. If you want to apply \'average\' only on distinct columns, add a \'*\' at the end of the column name (e.g. stock*).  (optional) (default to undefined)
let counts: Array<string>; //Column names to count by. If you want to count only distinct columns, add a \'*\' at the end of the column name (e.g. stock*).  (optional) (default to undefined)
let mins: Array<string>; //Column names to min by. If you want to apply \'min\' only on distinct columns, add a \'*\' at the end of the column name (e.g. stock*).  (optional) (default to undefined)
let maxs: Array<string>; //Column names to max by. If you want to apply \'max\' only on distinct columns, add a \'*\' at the end of the column name (e.g. stock*).  (optional) (default to undefined)
let offset: number; //The query offset (optional) (default to undefined)
let limit: number; //The query limit (optional) (default to undefined)
let groupBys: Array<string>; //Column names to group by (optional) (default to undefined)
let orderBys: Array<string>; //Column names to order by. Default order is ascending. If you want to specify \'descending\' order, add a \'!\' at the beginning of the column name (e.g. !stock).  (optional) (default to undefined)

const { status, data } = await apiInstance.queryData(
    organizationId,
    workspaceId,
    datasetId,
    datasetPartId,
    selects,
    sums,
    avgs,
    counts,
    mins,
    maxs,
    offset,
    limit,
    groupBys,
    orderBys
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **organizationId** | [**string**] | the Organization identifier | defaults to undefined|
| **workspaceId** | [**string**] | the Workspace identifier | defaults to undefined|
| **datasetId** | [**string**] | the Dataset identifier | defaults to undefined|
| **datasetPartId** | [**string**] | the Dataset part identifier | defaults to undefined|
| **selects** | **Array&lt;string&gt;** | Column names that should be part of the response data. You can specify a column name like:  - id  - stock  - quantity  - ... If you want to select only distinct columns, add a \&#39;*\&#39; at the end of the column name (e.g. stock*).  | (optional) defaults to undefined|
| **sums** | **Array&lt;string&gt;** | Column names to sum by. If you want to sum only distinct columns, add a \&#39;*\&#39; at the end of the column name (e.g. stock*).  | (optional) defaults to undefined|
| **avgs** | **Array&lt;string&gt;** | Column names to average by. If you want to apply \&#39;average\&#39; only on distinct columns, add a \&#39;*\&#39; at the end of the column name (e.g. stock*).  | (optional) defaults to undefined|
| **counts** | **Array&lt;string&gt;** | Column names to count by. If you want to count only distinct columns, add a \&#39;*\&#39; at the end of the column name (e.g. stock*).  | (optional) defaults to undefined|
| **mins** | **Array&lt;string&gt;** | Column names to min by. If you want to apply \&#39;min\&#39; only on distinct columns, add a \&#39;*\&#39; at the end of the column name (e.g. stock*).  | (optional) defaults to undefined|
| **maxs** | **Array&lt;string&gt;** | Column names to max by. If you want to apply \&#39;max\&#39; only on distinct columns, add a \&#39;*\&#39; at the end of the column name (e.g. stock*).  | (optional) defaults to undefined|
| **offset** | [**number**] | The query offset | (optional) defaults to undefined|
| **limit** | [**number**] | The query limit | (optional) defaults to undefined|
| **groupBys** | **Array&lt;string&gt;** | Column names to group by | (optional) defaults to undefined|
| **orderBys** | **Array&lt;string&gt;** | Column names to order by. Default order is ascending. If you want to specify \&#39;descending\&#39; order, add a \&#39;!\&#39; at the beginning of the column name (e.g. !stock).  | (optional) defaults to undefined|


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
|**200** | Data related to provided information |  -  |
|**400** | Bad request - Data cannot be retrieved from provided information |  -  |
|**403** | Insufficient permissions on organization, workspace or dataset |  -  |
|**404** | Dataset specified is not found or you don\&#39;t have access to it |  -  |
|**422** | Targeted dataset do not support requests |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **replaceDatasetPart**
> DatasetPart replaceDatasetPart()


### Example

```typescript
import {
    DatasetApi,
    Configuration,
    DatasetPartUpdateRequest
} from '@cosmotech/api-ts';

const configuration = new Configuration();
const apiInstance = new DatasetApi(configuration);

let organizationId: string; //the Organization identifier (default to undefined)
let workspaceId: string; //the Workspace identifier (default to undefined)
let datasetId: string; //the Dataset identifier (default to undefined)
let datasetPartId: string; //the Dataset part identifier (default to undefined)
let file: File; //Data file to upload (default to undefined)
let datasetPartUpdateRequest: DatasetPartUpdateRequest; // (optional) (default to undefined)

const { status, data } = await apiInstance.replaceDatasetPart(
    organizationId,
    workspaceId,
    datasetId,
    datasetPartId,
    file,
    datasetPartUpdateRequest
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **organizationId** | [**string**] | the Organization identifier | defaults to undefined|
| **workspaceId** | [**string**] | the Workspace identifier | defaults to undefined|
| **datasetId** | [**string**] | the Dataset identifier | defaults to undefined|
| **datasetPartId** | [**string**] | the Dataset part identifier | defaults to undefined|
| **file** | [**File**] | Data file to upload | defaults to undefined|
| **datasetPartUpdateRequest** | **DatasetPartUpdateRequest** |  | (optional) defaults to undefined|


### Return type

**DatasetPart**

### Authorization

[oAuth2AuthCode](../README.md#oAuth2AuthCode)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json, application/yaml


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Dataset part successfully replaced |  -  |
|**400** | Bad request |  -  |
|**403** | Insufficient permissions on organization, workspace or dataset |  -  |
|**404** | Dataset part specified is not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchDatasetParts**
> Array<DatasetPart> searchDatasetParts(requestBody)


### Example

```typescript
import {
    DatasetApi,
    Configuration
} from '@cosmotech/api-ts';

const configuration = new Configuration();
const apiInstance = new DatasetApi(configuration);

let organizationId: string; //the Organization identifier (default to undefined)
let workspaceId: string; //the Workspace identifier (default to undefined)
let datasetId: string; //the Dataset identifier (default to undefined)
let requestBody: Array<string>; //the Dataset parts search parameters
let page: number; //Page number to query (first page is at index 0) (optional) (default to undefined)
let size: number; //Amount of result by page (optional) (default to undefined)

const { status, data } = await apiInstance.searchDatasetParts(
    organizationId,
    workspaceId,
    datasetId,
    requestBody,
    page,
    size
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **requestBody** | **Array<string>**| the Dataset parts search parameters | |
| **organizationId** | [**string**] | the Organization identifier | defaults to undefined|
| **workspaceId** | [**string**] | the Workspace identifier | defaults to undefined|
| **datasetId** | [**string**] | the Dataset identifier | defaults to undefined|
| **page** | [**number**] | Page number to query (first page is at index 0) | (optional) defaults to undefined|
| **size** | [**number**] | Amount of result by page | (optional) defaults to undefined|


### Return type

**Array<DatasetPart>**

### Authorization

[oAuth2AuthCode](../README.md#oAuth2AuthCode)

### HTTP request headers

 - **Content-Type**: application/json, application/yaml
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Dataset part list containing tags |  -  |
|**400** | Bad request |  -  |
|**403** | Insufficient permissions on organization, workspace or dataset |  -  |
|**404** | Dataset specified is not found or you don\&#39;t have access to it |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchDatasets**
> Array<Dataset> searchDatasets(requestBody)


### Example

```typescript
import {
    DatasetApi,
    Configuration
} from '@cosmotech/api-ts';

const configuration = new Configuration();
const apiInstance = new DatasetApi(configuration);

let organizationId: string; //the Organization identifier (default to undefined)
let workspaceId: string; //the Workspace identifier (default to undefined)
let requestBody: Array<string>; //the Dataset search parameters
let page: number; //Page number to query (first page is at index 0) (optional) (default to undefined)
let size: number; //Amount of result by page (optional) (default to undefined)

const { status, data } = await apiInstance.searchDatasets(
    organizationId,
    workspaceId,
    requestBody,
    page,
    size
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **requestBody** | **Array<string>**| the Dataset search parameters | |
| **organizationId** | [**string**] | the Organization identifier | defaults to undefined|
| **workspaceId** | [**string**] | the Workspace identifier | defaults to undefined|
| **page** | [**number**] | Page number to query (first page is at index 0) | (optional) defaults to undefined|
| **size** | [**number**] | Amount of result by page | (optional) defaults to undefined|


### Return type

**Array<Dataset>**

### Authorization

[oAuth2AuthCode](../README.md#oAuth2AuthCode)

### HTTP request headers

 - **Content-Type**: application/json, application/yaml
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Dataset list containing tags |  -  |
|**403** | Insufficient permissions on organization, workspace or dataset |  -  |
|**404** | Organization, workspace or dataset specified is not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateDataset**
> Dataset updateDataset()

Update a dataset

### Example

```typescript
import {
    DatasetApi,
    Configuration,
    DatasetUpdateRequest
} from '@cosmotech/api-ts';

const configuration = new Configuration();
const apiInstance = new DatasetApi(configuration);

let organizationId: string; //the Organization identifier (default to undefined)
let workspaceId: string; //the Workspace identifier (default to undefined)
let datasetId: string; //the Dataset identifier (default to undefined)
let datasetUpdateRequest: DatasetUpdateRequest; // (default to undefined)
let files: Array<File>; //Notes:   - Each parts defined in dataset should have a file defined in this list   - Please ensure that upload files order match with data parts list defined     - First file uploaded will match with first dataset parts and so on  (optional) (default to undefined)

const { status, data } = await apiInstance.updateDataset(
    organizationId,
    workspaceId,
    datasetId,
    datasetUpdateRequest,
    files
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **organizationId** | [**string**] | the Organization identifier | defaults to undefined|
| **workspaceId** | [**string**] | the Workspace identifier | defaults to undefined|
| **datasetId** | [**string**] | the Dataset identifier | defaults to undefined|
| **datasetUpdateRequest** | **DatasetUpdateRequest** |  | defaults to undefined|
| **files** | **Array&lt;File&gt;** | Notes:   - Each parts defined in dataset should have a file defined in this list   - Please ensure that upload files order match with data parts list defined     - First file uploaded will match with first dataset parts and so on  | (optional) defaults to undefined|


### Return type

**Dataset**

### Authorization

[oAuth2AuthCode](../README.md#oAuth2AuthCode)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json, application/yaml


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Dataset successfully updated |  -  |
|**400** | Bad request |  -  |
|**403** | Insufficient permissions on organization, workspace or dataset |  -  |
|**404** | Organization, workspace or dataset specified is not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateDatasetAccessControl**
> DatasetAccessControl updateDatasetAccessControl(datasetRole)


### Example

```typescript
import {
    DatasetApi,
    Configuration,
    DatasetRole
} from '@cosmotech/api-ts';

const configuration = new Configuration();
const apiInstance = new DatasetApi(configuration);

let organizationId: string; //the Organization identifier (default to undefined)
let workspaceId: string; //the Workspace identifier (default to undefined)
let datasetId: string; //the Dataset identifier (default to undefined)
let identityId: string; //the User identifier (default to undefined)
let datasetRole: DatasetRole; //The new Dataset Access Control

const { status, data } = await apiInstance.updateDatasetAccessControl(
    organizationId,
    workspaceId,
    datasetId,
    identityId,
    datasetRole
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **datasetRole** | **DatasetRole**| The new Dataset Access Control | |
| **organizationId** | [**string**] | the Organization identifier | defaults to undefined|
| **workspaceId** | [**string**] | the Workspace identifier | defaults to undefined|
| **datasetId** | [**string**] | the Dataset identifier | defaults to undefined|
| **identityId** | [**string**] | the User identifier | defaults to undefined|


### Return type

**DatasetAccessControl**

### Authorization

[oAuth2AuthCode](../README.md#oAuth2AuthCode)

### HTTP request headers

 - **Content-Type**: application/json, application/yaml
 - **Accept**: application/json, application/yaml


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | The Dataset access |  -  |
|**404** | The Dataset specified is unknown or you don\&#39;t have access to it |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateDatasetDefaultSecurity**
> DatasetSecurity updateDatasetDefaultSecurity(datasetRole)


### Example

```typescript
import {
    DatasetApi,
    Configuration,
    DatasetRole
} from '@cosmotech/api-ts';

const configuration = new Configuration();
const apiInstance = new DatasetApi(configuration);

let organizationId: string; //the Organization identifier (default to undefined)
let workspaceId: string; //the Workspace identifier (default to undefined)
let datasetId: string; //the Dataset identifier (default to undefined)
let datasetRole: DatasetRole; //This change the dataset default security. The default security is the role assigned to any person not on the Access Control List. If the default security is None, then nobody outside of the ACL can access the dataset.

const { status, data } = await apiInstance.updateDatasetDefaultSecurity(
    organizationId,
    workspaceId,
    datasetId,
    datasetRole
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **datasetRole** | **DatasetRole**| This change the dataset default security. The default security is the role assigned to any person not on the Access Control List. If the default security is None, then nobody outside of the ACL can access the dataset. | |
| **organizationId** | [**string**] | the Organization identifier | defaults to undefined|
| **workspaceId** | [**string**] | the Workspace identifier | defaults to undefined|
| **datasetId** | [**string**] | the Dataset identifier | defaults to undefined|


### Return type

**DatasetSecurity**

### Authorization

[oAuth2AuthCode](../README.md#oAuth2AuthCode)

### HTTP request headers

 - **Content-Type**: application/json, application/yaml
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**201** | The Dataset default visibility |  -  |
|**404** | the Dataset specified is unknown or you don\&#39;t have access to it |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateDatasetPart**
> DatasetPart updateDatasetPart(datasetPartUpdateRequest)


### Example

```typescript
import {
    DatasetApi,
    Configuration,
    DatasetPartUpdateRequest
} from '@cosmotech/api-ts';

const configuration = new Configuration();
const apiInstance = new DatasetApi(configuration);

let organizationId: string; //the Organization identifier (default to undefined)
let workspaceId: string; //the Workspace identifier (default to undefined)
let datasetId: string; //the Dataset identifier (default to undefined)
let datasetPartId: string; //the Dataset part identifier (default to undefined)
let datasetPartUpdateRequest: DatasetPartUpdateRequest; //Dataset part information to update

const { status, data } = await apiInstance.updateDatasetPart(
    organizationId,
    workspaceId,
    datasetId,
    datasetPartId,
    datasetPartUpdateRequest
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **datasetPartUpdateRequest** | **DatasetPartUpdateRequest**| Dataset part information to update | |
| **organizationId** | [**string**] | the Organization identifier | defaults to undefined|
| **workspaceId** | [**string**] | the Workspace identifier | defaults to undefined|
| **datasetId** | [**string**] | the Dataset identifier | defaults to undefined|
| **datasetPartId** | [**string**] | the Dataset part identifier | defaults to undefined|


### Return type

**DatasetPart**

### Authorization

[oAuth2AuthCode](../README.md#oAuth2AuthCode)

### HTTP request headers

 - **Content-Type**: application/json, application/yaml
 - **Accept**: application/json, application/yaml


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Dataset part information successfully updated |  -  |
|**400** | Bad request |  -  |
|**403** | Insufficient permissions on organization, workspace or dataset |  -  |
|**404** | Dataset part specified is not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

