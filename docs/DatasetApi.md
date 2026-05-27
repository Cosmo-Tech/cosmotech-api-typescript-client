# DatasetApi

All URIs are relative to *http://localhost*

|Method | HTTP request | Description|
|------------- | ------------- | -------------|
|[**addDatasetAccessControl**](#adddatasetaccesscontrol) | **POST** /organizations/{organization_id}/datasets/{dataset_id}/security/access | Add a control access to the Dataset|
|[**addOrReplaceDatasetCompatibilityElements**](#addorreplacedatasetcompatibilityelements) | **POST** /organizations/{organization_id}/datasets/{dataset_id}/compatibility | Add Dataset Compatibility elements.|
|[**copyDataset**](#copydataset) | **POST** /organizations/{organization_id}/datasets/copy | Copy a Dataset to another Dataset.|
|[**createDataset**](#createdataset) | **POST** /organizations/{organization_id}/datasets | Create a new Dataset|
|[**createSubDataset**](#createsubdataset) | **POST** /organizations/{organization_id}/datasets/{dataset_id}/subdataset | Create a sub-dataset from the dataset in parameter|
|[**createTwingraphEntities**](#createtwingraphentities) | **POST** /organizations/{organization_id}/datasets/{dataset_id}/twingraph/{type} | Create new entities in a graph instance|
|[**deleteDataset**](#deletedataset) | **DELETE** /organizations/{organization_id}/datasets/{dataset_id} | Delete a dataset|
|[**deleteTwingraphEntities**](#deletetwingraphentities) | **DELETE** /organizations/{organization_id}/datasets/{dataset_id}/twingraph/{type} | Delete entities in a graph instance|
|[**downloadTwingraph**](#downloadtwingraph) | **GET** /organizations/{organization_id}/datasets/twingraph/download/{hash} | Download a graph as a zip file|
|[**findAllDatasets**](#findalldatasets) | **GET** /organizations/{organization_id}/datasets | List all Datasets|
|[**findDatasetById**](#finddatasetbyid) | **GET** /organizations/{organization_id}/datasets/{dataset_id} | Get the details of a Dataset|
|[**getDatasetAccessControl**](#getdatasetaccesscontrol) | **GET** /organizations/{organization_id}/datasets/{dataset_id}/security/access/{identity_id} | Get a control access for the Dataset|
|[**getDatasetSecurity**](#getdatasetsecurity) | **GET** /organizations/{organization_id}/datasets/{dataset_id}/security | Get the Dataset security information|
|[**getDatasetSecurityUsers**](#getdatasetsecurityusers) | **GET** /organizations/{organization_id}/datasets/{dataset_id}/security/users | Get the Dataset security users list|
|[**getDatasetTwingraphStatus**](#getdatasettwingraphstatus) | **GET** /organizations/{organization_id}/datasets/{dataset_id}/status | Get the dataset\&#39;s refresh job status|
|[**getTwingraphEntities**](#gettwingraphentities) | **GET** /organizations/{organization_id}/datasets/{dataset_id}/twingraph/{type} | Get entities in a graph instance|
|[**linkWorkspace**](#linkworkspace) | **POST** /organizations/{organization_id}/datasets/{dataset_id}/link | |
|[**refreshDataset**](#refreshdataset) | **POST** /organizations/{organization_id}/datasets/{dataset_id}/refresh | Refresh data on dataset from dataset\&#39;s source|
|[**removeAllDatasetCompatibilityElements**](#removealldatasetcompatibilityelements) | **DELETE** /organizations/{organization_id}/datasets/{dataset_id}/compatibility | Remove all Dataset Compatibility elements from the Dataset specified|
|[**removeDatasetAccessControl**](#removedatasetaccesscontrol) | **DELETE** /organizations/{organization_id}/datasets/{dataset_id}/security/access/{identity_id} | Remove the specified access from the given Dataset|
|[**rollbackRefresh**](#rollbackrefresh) | **POST** /organizations/{organization_id}/datasets/{dataset_id}/refresh/rollback | Rollback the dataset after a failed refresh|
|[**searchDatasets**](#searchdatasets) | **POST** /organizations/{organization_id}/datasets/search | Search Datasets by tags|
|[**setDatasetDefaultSecurity**](#setdatasetdefaultsecurity) | **POST** /organizations/{organization_id}/datasets/{dataset_id}/security/default | Set the Dataset default security|
|[**twingraphBatchQuery**](#twingraphbatchquery) | **POST** /organizations/{organization_id}/datasets/{dataset_id}/batch-query | Run a query on a graph instance and return the result as a zip file in async mode|
|[**twingraphBatchUpdate**](#twingraphbatchupdate) | **POST** /organizations/{organization_id}/datasets/{dataset_id}/batch | Async batch update by loading a CSV file on a graph instance |
|[**twingraphQuery**](#twingraphquery) | **POST** /organizations/{organization_id}/datasets/{dataset_id}/twingraph | Return the result of a query made on the graph instance as a json|
|[**unlinkWorkspace**](#unlinkworkspace) | **POST** /organizations/{organization_id}/datasets/{dataset_id}/unlink | |
|[**updateDataset**](#updatedataset) | **PATCH** /organizations/{organization_id}/datasets/{dataset_id} | Update a dataset|
|[**updateDatasetAccessControl**](#updatedatasetaccesscontrol) | **PATCH** /organizations/{organization_id}/datasets/{dataset_id}/security/access/{identity_id} | Update the specified access to User for a Dataset|
|[**updateTwingraphEntities**](#updatetwingraphentities) | **PATCH** /organizations/{organization_id}/datasets/{dataset_id}/twingraph/{type} | Update entities in a graph instance|
|[**uploadTwingraph**](#uploadtwingraph) | **POST** /organizations/{organization_id}/datasets/{dataset_id} | Upload data from zip file to dataset\&#39;s twingraph|

# **addDatasetAccessControl**
> DatasetAccessControl addDatasetAccessControl(datasetAccessControl)


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
let datasetId: string; //the Dataset identifier (default to undefined)
let datasetAccessControl: DatasetAccessControl; //the new Dataset security access to add.

const { status, data } = await apiInstance.addDatasetAccessControl(
    organizationId,
    datasetId,
    datasetAccessControl
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **datasetAccessControl** | **DatasetAccessControl**| the new Dataset security access to add. | |
| **organizationId** | [**string**] | the Organization identifier | defaults to undefined|
| **datasetId** | [**string**] | the Dataset identifier | defaults to undefined|


### Return type

**DatasetAccessControl**

### Authorization

[oAuth2AuthCode](../README.md#oAuth2AuthCode)

### HTTP request headers

 - **Content-Type**: application/json, application/yaml
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**201** | The Dataset access |  -  |
|**404** | the Dataset specified is unknown or you don\&#39;t have access to it |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **addOrReplaceDatasetCompatibilityElements**
> Array<DatasetCompatibility> addOrReplaceDatasetCompatibilityElements(datasetCompatibility)


### Example

```typescript
import {
    DatasetApi,
    Configuration
} from '@cosmotech/api-ts';

const configuration = new Configuration();
const apiInstance = new DatasetApi(configuration);

let organizationId: string; //the Organization identifier (default to undefined)
let datasetId: string; //the Dataset identifier (default to undefined)
let datasetCompatibility: Array<DatasetCompatibility>; //the Dataset Compatibility elements

const { status, data } = await apiInstance.addOrReplaceDatasetCompatibilityElements(
    organizationId,
    datasetId,
    datasetCompatibility
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **datasetCompatibility** | **Array<DatasetCompatibility>**| the Dataset Compatibility elements | |
| **organizationId** | [**string**] | the Organization identifier | defaults to undefined|
| **datasetId** | [**string**] | the Dataset identifier | defaults to undefined|


### Return type

**Array<DatasetCompatibility>**

### Authorization

[oAuth2AuthCode](../README.md#oAuth2AuthCode)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**201** | the Dataset Compatibility elements |  -  |
|**400** | Bad request |  -  |
|**404** | the Dataset specified is unknown or you don\&#39;t have access to it |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **copyDataset**
> DatasetCopyParameters copyDataset(datasetCopyParameters)

Not implemented!

### Example

```typescript
import {
    DatasetApi,
    Configuration,
    DatasetCopyParameters
} from '@cosmotech/api-ts';

const configuration = new Configuration();
const apiInstance = new DatasetApi(configuration);

let organizationId: string; //the Organization identifier (default to undefined)
let datasetCopyParameters: DatasetCopyParameters; //the Dataset copy parameters

const { status, data } = await apiInstance.copyDataset(
    organizationId,
    datasetCopyParameters
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **datasetCopyParameters** | **DatasetCopyParameters**| the Dataset copy parameters | |
| **organizationId** | [**string**] | the Organization identifier | defaults to undefined|


### Return type

**DatasetCopyParameters**

### Authorization

[oAuth2AuthCode](../README.md#oAuth2AuthCode)

### HTTP request headers

 - **Content-Type**: application/json, application/yaml
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**201** | the Dataset copy operation parameters |  -  |
|**400** | Bad request |  -  |
|**404** | the Dataset specified as Source or Target is unknown or you don\&#39;t have access to it |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createDataset**
> Dataset createDataset(dataset)


### Example

```typescript
import {
    DatasetApi,
    Configuration,
    Dataset
} from '@cosmotech/api-ts';

const configuration = new Configuration();
const apiInstance = new DatasetApi(configuration);

let organizationId: string; //the Organization identifier (default to undefined)
let dataset: Dataset; //the Dataset to create

const { status, data } = await apiInstance.createDataset(
    organizationId,
    dataset
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **dataset** | **Dataset**| the Dataset to create | |
| **organizationId** | [**string**] | the Organization identifier | defaults to undefined|


### Return type

**Dataset**

### Authorization

[oAuth2AuthCode](../README.md#oAuth2AuthCode)

### HTTP request headers

 - **Content-Type**: application/json, application/yaml
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**201** | the dataset details |  -  |
|**400** | Bad request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createSubDataset**
> Dataset createSubDataset(subDatasetGraphQuery)

Create a copy of the dataset using the results of the list of queries given in parameter. Note: This endpoint is activated only if `csm.platform.twincache.useGraphModule` property is set to true 

### Example

```typescript
import {
    DatasetApi,
    Configuration,
    SubDatasetGraphQuery
} from '@cosmotech/api-ts';

const configuration = new Configuration();
const apiInstance = new DatasetApi(configuration);

let organizationId: string; //the Organization identifier (default to undefined)
let datasetId: string; //the Dataset identifier (default to undefined)
let subDatasetGraphQuery: SubDatasetGraphQuery; //the Cypher query to filter

const { status, data } = await apiInstance.createSubDataset(
    organizationId,
    datasetId,
    subDatasetGraphQuery
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **subDatasetGraphQuery** | **SubDatasetGraphQuery**| the Cypher query to filter | |
| **organizationId** | [**string**] | the Organization identifier | defaults to undefined|
| **datasetId** | [**string**] | the Dataset identifier | defaults to undefined|


### Return type

**Dataset**

### Authorization

[oAuth2AuthCode](../README.md#oAuth2AuthCode)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Successful response |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createTwingraphEntities**
> string createTwingraphEntities(graphProperties)

Create new entities in a graph instance Note: This endpoint is activated only if `csm.platform.twincache.useGraphModule` property is set to true 

### Example

```typescript
import {
    DatasetApi,
    Configuration
} from '@cosmotech/api-ts';

const configuration = new Configuration();
const apiInstance = new DatasetApi(configuration);

let organizationId: string; //the Organization identifier (default to undefined)
let datasetId: string; //the Dataset Identifier (default to undefined)
let type: 'node' | 'relationship'; //the entity model type (default to undefined)
let graphProperties: Array<GraphProperties>; //the entities to create

const { status, data } = await apiInstance.createTwingraphEntities(
    organizationId,
    datasetId,
    type,
    graphProperties
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **graphProperties** | **Array<GraphProperties>**| the entities to create | |
| **organizationId** | [**string**] | the Organization identifier | defaults to undefined|
| **datasetId** | [**string**] | the Dataset Identifier | defaults to undefined|
| **type** | [**&#39;node&#39; | &#39;relationship&#39;**]**Array<&#39;node&#39; &#124; &#39;relationship&#39;>** | the entity model type | defaults to undefined|


### Return type

**string**

### Authorization

[oAuth2AuthCode](../README.md#oAuth2AuthCode)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Successful response |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteDataset**
> deleteDataset()


### Example

```typescript
import {
    DatasetApi,
    Configuration
} from '@cosmotech/api-ts';

const configuration = new Configuration();
const apiInstance = new DatasetApi(configuration);

let organizationId: string; //the Organization identifier (default to undefined)
let datasetId: string; //the Dataset identifier (default to undefined)

const { status, data } = await apiInstance.deleteDataset(
    organizationId,
    datasetId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **organizationId** | [**string**] | the Organization identifier | defaults to undefined|
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
|**204** | Request successful |  -  |
|**404** | the Dataset specified is unknown or you don\&#39;t have access to it |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteTwingraphEntities**
> deleteTwingraphEntities()

Delete entities in a graph instance Note: This endpoint is activated only if `csm.platform.twincache.useGraphModule` property is set to true 

### Example

```typescript
import {
    DatasetApi,
    Configuration
} from '@cosmotech/api-ts';

const configuration = new Configuration();
const apiInstance = new DatasetApi(configuration);

let organizationId: string; //the Organization identifier (default to undefined)
let datasetId: string; //the Dataset Identifier (default to undefined)
let type: 'node' | 'relationship'; //the entity model type (default to undefined)
let ids: Array<string>; //the entities to delete (default to undefined)

const { status, data } = await apiInstance.deleteTwingraphEntities(
    organizationId,
    datasetId,
    type,
    ids
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **organizationId** | [**string**] | the Organization identifier | defaults to undefined|
| **datasetId** | [**string**] | the Dataset Identifier | defaults to undefined|
| **type** | [**&#39;node&#39; | &#39;relationship&#39;**]**Array<&#39;node&#39; &#124; &#39;relationship&#39;>** | the entity model type | defaults to undefined|
| **ids** | **Array&lt;string&gt;** | the entities to delete | defaults to undefined|


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
|**204** | Successful response |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **downloadTwingraph**
> File downloadTwingraph()

Download the compressed graph reference by the hash in a zip file Note: This endpoint is activated only if `csm.platform.twincache.useGraphModule` property is set to true 

### Example

```typescript
import {
    DatasetApi,
    Configuration
} from '@cosmotech/api-ts';

const configuration = new Configuration();
const apiInstance = new DatasetApi(configuration);

let organizationId: string; //the Organization identifier (default to undefined)
let hash: string; //the Graph download identifier (default to undefined)

const { status, data } = await apiInstance.downloadTwingraph(
    organizationId,
    hash
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **organizationId** | [**string**] | the Organization identifier | defaults to undefined|
| **hash** | [**string**] | the Graph download identifier | defaults to undefined|


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
|**200** | Successful response |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **findAllDatasets**
> Array<Dataset> findAllDatasets()


### Example

```typescript
import {
    DatasetApi,
    Configuration
} from '@cosmotech/api-ts';

const configuration = new Configuration();
const apiInstance = new DatasetApi(configuration);

let organizationId: string; //the Organization identifier (default to undefined)
let page: number; //page number to query (first page is at index 0) (optional) (default to undefined)
let size: number; //amount of result by page (optional) (default to undefined)

const { status, data } = await apiInstance.findAllDatasets(
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

**Array<Dataset>**

### Authorization

[oAuth2AuthCode](../README.md#oAuth2AuthCode)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | the list of Datasets |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **findDatasetById**
> Dataset findDatasetById()


### Example

```typescript
import {
    DatasetApi,
    Configuration
} from '@cosmotech/api-ts';

const configuration = new Configuration();
const apiInstance = new DatasetApi(configuration);

let organizationId: string; //the Organization identifier (default to undefined)
let datasetId: string; //the Dataset identifier (default to undefined)

const { status, data } = await apiInstance.findDatasetById(
    organizationId,
    datasetId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **organizationId** | [**string**] | the Organization identifier | defaults to undefined|
| **datasetId** | [**string**] | the Dataset identifier | defaults to undefined|


### Return type

**Dataset**

### Authorization

[oAuth2AuthCode](../README.md#oAuth2AuthCode)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | the Dataset details |  -  |
|**404** | the Dataset specified is unknown or you don\&#39;t have access to it |  -  |

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
let datasetId: string; //the Dataset identifier (default to undefined)
let identityId: string; //the User identifier (default to undefined)

const { status, data } = await apiInstance.getDatasetAccessControl(
    organizationId,
    datasetId,
    identityId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **organizationId** | [**string**] | the Organization identifier | defaults to undefined|
| **datasetId** | [**string**] | the Dataset identifier | defaults to undefined|
| **identityId** | [**string**] | the User identifier | defaults to undefined|


### Return type

**DatasetAccessControl**

### Authorization

[oAuth2AuthCode](../README.md#oAuth2AuthCode)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | The Dataset access |  -  |
|**404** | The Dataset or user specified is unknown or you don\&#39;t have access to it |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDatasetSecurity**
> DatasetSecurity getDatasetSecurity()


### Example

```typescript
import {
    DatasetApi,
    Configuration
} from '@cosmotech/api-ts';

const configuration = new Configuration();
const apiInstance = new DatasetApi(configuration);

let organizationId: string; //the Organization identifier (default to undefined)
let datasetId: string; //the Dataset identifier (default to undefined)

const { status, data } = await apiInstance.getDatasetSecurity(
    organizationId,
    datasetId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **organizationId** | [**string**] | the Organization identifier | defaults to undefined|
| **datasetId** | [**string**] | the Dataset identifier | defaults to undefined|


### Return type

**DatasetSecurity**

### Authorization

[oAuth2AuthCode](../README.md#oAuth2AuthCode)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | The Dataset security |  -  |
|**404** | the Dataset specified is unknown or you don\&#39;t have access to it |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDatasetSecurityUsers**
> Array<string> getDatasetSecurityUsers()


### Example

```typescript
import {
    DatasetApi,
    Configuration
} from '@cosmotech/api-ts';

const configuration = new Configuration();
const apiInstance = new DatasetApi(configuration);

let organizationId: string; //the Organization identifier (default to undefined)
let datasetId: string; //the Dataset identifier (default to undefined)

const { status, data } = await apiInstance.getDatasetSecurityUsers(
    organizationId,
    datasetId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **organizationId** | [**string**] | the Organization identifier | defaults to undefined|
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

# **getDatasetTwingraphStatus**
> string getDatasetTwingraphStatus()

Get the status of the import workflow lauch on the dataset\'s refresh. This endpoint needs to be called to update a dataset IngestionStatus or TwincacheStatus

### Example

```typescript
import {
    DatasetApi,
    Configuration
} from '@cosmotech/api-ts';

const configuration = new Configuration();
const apiInstance = new DatasetApi(configuration);

let organizationId: string; //the Organization identifier (default to undefined)
let datasetId: string; //the dataset identifier (default to undefined)

const { status, data } = await apiInstance.getDatasetTwingraphStatus(
    organizationId,
    datasetId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **organizationId** | [**string**] | the Organization identifier | defaults to undefined|
| **datasetId** | [**string**] | the dataset identifier | defaults to undefined|


### Return type

**string**

### Authorization

[oAuth2AuthCode](../README.md#oAuth2AuthCode)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/yaml, application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Successful response |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTwingraphEntities**
> string getTwingraphEntities()

Get entities in a graph instance Note: This endpoint is activated only if `csm.platform.twincache.useGraphModule` property is set to true 

### Example

```typescript
import {
    DatasetApi,
    Configuration
} from '@cosmotech/api-ts';

const configuration = new Configuration();
const apiInstance = new DatasetApi(configuration);

let organizationId: string; //the Organization identifier (default to undefined)
let datasetId: string; //the Dataset Identifier (default to undefined)
let type: 'node' | 'relationship'; //the entity model type (default to undefined)
let ids: Array<string>; //the entities to get (default to undefined)

const { status, data } = await apiInstance.getTwingraphEntities(
    organizationId,
    datasetId,
    type,
    ids
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **organizationId** | [**string**] | the Organization identifier | defaults to undefined|
| **datasetId** | [**string**] | the Dataset Identifier | defaults to undefined|
| **type** | [**&#39;node&#39; | &#39;relationship&#39;**]**Array<&#39;node&#39; &#124; &#39;relationship&#39;>** | the entity model type | defaults to undefined|
| **ids** | **Array&lt;string&gt;** | the entities to get | defaults to undefined|


### Return type

**string**

### Authorization

[oAuth2AuthCode](../README.md#oAuth2AuthCode)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Successful response |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **linkWorkspace**
> Dataset linkWorkspace()


### Example

```typescript
import {
    DatasetApi,
    Configuration
} from '@cosmotech/api-ts';

const configuration = new Configuration();
const apiInstance = new DatasetApi(configuration);

let organizationId: string; //the Organization identifier (default to undefined)
let datasetId: string; //the Dataset identifier (default to undefined)
let workspaceId: string; //workspace id to be linked to (default to undefined)

const { status, data } = await apiInstance.linkWorkspace(
    organizationId,
    datasetId,
    workspaceId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **organizationId** | [**string**] | the Organization identifier | defaults to undefined|
| **datasetId** | [**string**] | the Dataset identifier | defaults to undefined|
| **workspaceId** | [**string**] | workspace id to be linked to | defaults to undefined|


### Return type

**Dataset**

### Authorization

[oAuth2AuthCode](../README.md#oAuth2AuthCode)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | the dataset details |  -  |
|**400** | Bad request |  -  |
|**404** | the Dataset specified is unknown or you don\&#39;t have access to it |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **refreshDataset**
> DatasetTwinGraphInfo refreshDataset()

Refresh dataset from parent source. At date, sources can be:      dataset (refresh from another dataset)      Azure Digital twin      Azure storage      Local File (import a new file)  During refresh, datas are overwritten Note: This endpoint is activated only if `csm.platform.twincache.useGraphModule` property is set to true 

### Example

```typescript
import {
    DatasetApi,
    Configuration
} from '@cosmotech/api-ts';

const configuration = new Configuration();
const apiInstance = new DatasetApi(configuration);

let organizationId: string; //the Organization identifier (default to undefined)
let datasetId: string; //the Dataset identifier (default to undefined)

const { status, data } = await apiInstance.refreshDataset(
    organizationId,
    datasetId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **organizationId** | [**string**] | the Organization identifier | defaults to undefined|
| **datasetId** | [**string**] | the Dataset identifier | defaults to undefined|


### Return type

**DatasetTwinGraphInfo**

### Authorization

[oAuth2AuthCode](../README.md#oAuth2AuthCode)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Successful response |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **removeAllDatasetCompatibilityElements**
> removeAllDatasetCompatibilityElements()


### Example

```typescript
import {
    DatasetApi,
    Configuration
} from '@cosmotech/api-ts';

const configuration = new Configuration();
const apiInstance = new DatasetApi(configuration);

let organizationId: string; //the Organization identifier (default to undefined)
let datasetId: string; //the Dataset identifier (default to undefined)

const { status, data } = await apiInstance.removeAllDatasetCompatibilityElements(
    organizationId,
    datasetId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **organizationId** | [**string**] | the Organization identifier | defaults to undefined|
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
|**204** | the operation succeeded |  -  |
|**404** | the Dataset specified is unknown or you don\&#39;t have access to it |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **removeDatasetAccessControl**
> removeDatasetAccessControl()


### Example

```typescript
import {
    DatasetApi,
    Configuration
} from '@cosmotech/api-ts';

const configuration = new Configuration();
const apiInstance = new DatasetApi(configuration);

let organizationId: string; //the Organization identifier (default to undefined)
let datasetId: string; //the Dataset identifier (default to undefined)
let identityId: string; //the User identifier (default to undefined)

const { status, data } = await apiInstance.removeDatasetAccessControl(
    organizationId,
    datasetId,
    identityId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **organizationId** | [**string**] | the Organization identifier | defaults to undefined|
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

# **rollbackRefresh**
> string rollbackRefresh()

Rollback the twingraph on a dataset after a failed refresh Note: This endpoint is activated only if `csm.platform.twincache.useGraphModule` property is set to true 

### Example

```typescript
import {
    DatasetApi,
    Configuration
} from '@cosmotech/api-ts';

const configuration = new Configuration();
const apiInstance = new DatasetApi(configuration);

let organizationId: string; //the Organization identifier (default to undefined)
let datasetId: string; //the Dataset identifier (default to undefined)

const { status, data } = await apiInstance.rollbackRefresh(
    organizationId,
    datasetId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **organizationId** | [**string**] | the Organization identifier | defaults to undefined|
| **datasetId** | [**string**] | the Dataset identifier | defaults to undefined|


### Return type

**string**

### Authorization

[oAuth2AuthCode](../README.md#oAuth2AuthCode)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Successful response |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchDatasets**
> Array<Dataset> searchDatasets(datasetSearch)


### Example

```typescript
import {
    DatasetApi,
    Configuration,
    DatasetSearch
} from '@cosmotech/api-ts';

const configuration = new Configuration();
const apiInstance = new DatasetApi(configuration);

let organizationId: string; //the Organization identifier (default to undefined)
let datasetSearch: DatasetSearch; //the Dataset search parameters
let page: number; //page number to query (first page is at index 0) (optional) (default to undefined)
let size: number; //amount of result by page (optional) (default to undefined)

const { status, data } = await apiInstance.searchDatasets(
    organizationId,
    datasetSearch,
    page,
    size
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **datasetSearch** | **DatasetSearch**| the Dataset search parameters | |
| **organizationId** | [**string**] | the Organization identifier | defaults to undefined|
| **page** | [**number**] | page number to query (first page is at index 0) | (optional) defaults to undefined|
| **size** | [**number**] | amount of result by page | (optional) defaults to undefined|


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
|**200** | the list of Datasets |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **setDatasetDefaultSecurity**
> DatasetSecurity setDatasetDefaultSecurity(datasetRole)


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
let datasetId: string; //the Dataset identifier (default to undefined)
let datasetRole: DatasetRole; //This change the dataset default security. The default security is the role assigned to any person not on the Access Control List. If the default security is None, then nobody outside of the ACL can access the dataset.

const { status, data } = await apiInstance.setDatasetDefaultSecurity(
    organizationId,
    datasetId,
    datasetRole
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **datasetRole** | **DatasetRole**| This change the dataset default security. The default security is the role assigned to any person not on the Access Control List. If the default security is None, then nobody outside of the ACL can access the dataset. | |
| **organizationId** | [**string**] | the Organization identifier | defaults to undefined|
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

# **twingraphBatchQuery**
> DatasetTwinGraphHash twingraphBatchQuery(datasetTwinGraphQuery)

Run a query on a graph instance and return the result as a zip file in async mode Note: This endpoint is activated only if `csm.platform.twincache.useGraphModule` property is set to true 

### Example

```typescript
import {
    DatasetApi,
    Configuration,
    DatasetTwinGraphQuery
} from '@cosmotech/api-ts';

const configuration = new Configuration();
const apiInstance = new DatasetApi(configuration);

let organizationId: string; //the Organization identifier (default to undefined)
let datasetId: string; //the Graph Identifier (default to undefined)
let datasetTwinGraphQuery: DatasetTwinGraphQuery; //the query to run

const { status, data } = await apiInstance.twingraphBatchQuery(
    organizationId,
    datasetId,
    datasetTwinGraphQuery
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **datasetTwinGraphQuery** | **DatasetTwinGraphQuery**| the query to run | |
| **organizationId** | [**string**] | the Organization identifier | defaults to undefined|
| **datasetId** | [**string**] | the Graph Identifier | defaults to undefined|


### Return type

**DatasetTwinGraphHash**

### Authorization

[oAuth2AuthCode](../README.md#oAuth2AuthCode)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Successful response |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **twingraphBatchUpdate**
> TwinGraphBatchResult twingraphBatchUpdate(body)

Async batch update by loading a CSV file on a graph instance  Note: This endpoint is activated only if `csm.platform.twincache.useGraphModule` property is set to true 

### Example

```typescript
import {
    DatasetApi,
    Configuration,
    DatasetTwinGraphQuery
} from '@cosmotech/api-ts';

const configuration = new Configuration();
const apiInstance = new DatasetApi(configuration);

let organizationId: string; //the Organization identifier (default to undefined)
let datasetId: string; //the Dataset Identifier (default to undefined)
let twinGraphQuery: DatasetTwinGraphQuery; // (default to undefined)
let body: File; //

const { status, data } = await apiInstance.twingraphBatchUpdate(
    organizationId,
    datasetId,
    twinGraphQuery,
    body
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **body** | **File**|  | |
| **organizationId** | [**string**] | the Organization identifier | defaults to undefined|
| **datasetId** | [**string**] | the Dataset Identifier | defaults to undefined|
| **twinGraphQuery** | **DatasetTwinGraphQuery** |  | defaults to undefined|


### Return type

**TwinGraphBatchResult**

### Authorization

[oAuth2AuthCode](../README.md#oAuth2AuthCode)

### HTTP request headers

 - **Content-Type**: text/csv, application/octet-stream
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | csv file processed |  -  |
|**400** | Bad request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **twingraphQuery**
> Array<object> twingraphQuery(datasetTwinGraphQuery)

Run a query on a graph instance and return the result as a json Note: This endpoint is activated only if `csm.platform.twincache.useGraphModule` property is set to true 

### Example

```typescript
import {
    DatasetApi,
    Configuration,
    DatasetTwinGraphQuery
} from '@cosmotech/api-ts';

const configuration = new Configuration();
const apiInstance = new DatasetApi(configuration);

let organizationId: string; //the Organization identifier (default to undefined)
let datasetId: string; //the Dataset identifier (default to undefined)
let datasetTwinGraphQuery: DatasetTwinGraphQuery; //the query to run

const { status, data } = await apiInstance.twingraphQuery(
    organizationId,
    datasetId,
    datasetTwinGraphQuery
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **datasetTwinGraphQuery** | **DatasetTwinGraphQuery**| the query to run | |
| **organizationId** | [**string**] | the Organization identifier | defaults to undefined|
| **datasetId** | [**string**] | the Dataset identifier | defaults to undefined|


### Return type

**Array<object>**

### Authorization

[oAuth2AuthCode](../README.md#oAuth2AuthCode)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Successful response |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **unlinkWorkspace**
> Dataset unlinkWorkspace()


### Example

```typescript
import {
    DatasetApi,
    Configuration
} from '@cosmotech/api-ts';

const configuration = new Configuration();
const apiInstance = new DatasetApi(configuration);

let organizationId: string; //the Organization identifier (default to undefined)
let datasetId: string; //the Dataset identifier (default to undefined)
let workspaceId: string; //workspace id to be linked to (default to undefined)

const { status, data } = await apiInstance.unlinkWorkspace(
    organizationId,
    datasetId,
    workspaceId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **organizationId** | [**string**] | the Organization identifier | defaults to undefined|
| **datasetId** | [**string**] | the Dataset identifier | defaults to undefined|
| **workspaceId** | [**string**] | workspace id to be linked to | defaults to undefined|


### Return type

**Dataset**

### Authorization

[oAuth2AuthCode](../README.md#oAuth2AuthCode)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | the dataset details |  -  |
|**400** | Bad request |  -  |
|**404** | the Dataset specified is unknown or you don\&#39;t have access to it |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateDataset**
> Dataset updateDataset(dataset)


### Example

```typescript
import {
    DatasetApi,
    Configuration,
    Dataset
} from '@cosmotech/api-ts';

const configuration = new Configuration();
const apiInstance = new DatasetApi(configuration);

let organizationId: string; //the Organization identifier (default to undefined)
let datasetId: string; //the Dataset identifier (default to undefined)
let dataset: Dataset; //the new Dataset details. This endpoint can\'t be used to update security

const { status, data } = await apiInstance.updateDataset(
    organizationId,
    datasetId,
    dataset
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **dataset** | **Dataset**| the new Dataset details. This endpoint can\&#39;t be used to update security | |
| **organizationId** | [**string**] | the Organization identifier | defaults to undefined|
| **datasetId** | [**string**] | the Dataset identifier | defaults to undefined|


### Return type

**Dataset**

### Authorization

[oAuth2AuthCode](../README.md#oAuth2AuthCode)

### HTTP request headers

 - **Content-Type**: application/json, application/yaml
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | the dataset details |  -  |
|**400** | Bad request |  -  |
|**404** | the Dataset specified is unknown or you don\&#39;t have access to it |  -  |

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
let datasetId: string; //the Dataset identifier (default to undefined)
let identityId: string; //the User identifier (default to undefined)
let datasetRole: DatasetRole; //The new Dataset Access Control

const { status, data } = await apiInstance.updateDatasetAccessControl(
    organizationId,
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
| **datasetId** | [**string**] | the Dataset identifier | defaults to undefined|
| **identityId** | [**string**] | the User identifier | defaults to undefined|


### Return type

**DatasetAccessControl**

### Authorization

[oAuth2AuthCode](../README.md#oAuth2AuthCode)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | The Dataset access |  -  |
|**404** | The Dataset specified is unknown or you don\&#39;t have access to it |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateTwingraphEntities**
> string updateTwingraphEntities(graphProperties)

update entities in a graph instance

### Example

```typescript
import {
    DatasetApi,
    Configuration
} from '@cosmotech/api-ts';

const configuration = new Configuration();
const apiInstance = new DatasetApi(configuration);

let organizationId: string; //the Organization identifier (default to undefined)
let datasetId: string; //the Dataset Identifier (default to undefined)
let type: 'node' | 'relationship'; //the entity model type (default to undefined)
let graphProperties: Array<GraphProperties>; //The entities to update Note: This endpoint is activated only if `csm.platform.twincache.useGraphModule` property is set to true 

const { status, data } = await apiInstance.updateTwingraphEntities(
    organizationId,
    datasetId,
    type,
    graphProperties
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **graphProperties** | **Array<GraphProperties>**| The entities to update Note: This endpoint is activated only if &#x60;csm.platform.twincache.useGraphModule&#x60; property is set to true  | |
| **organizationId** | [**string**] | the Organization identifier | defaults to undefined|
| **datasetId** | [**string**] | the Dataset Identifier | defaults to undefined|
| **type** | [**&#39;node&#39; | &#39;relationship&#39;**]**Array<&#39;node&#39; &#124; &#39;relationship&#39;>** | the entity model type | defaults to undefined|


### Return type

**string**

### Authorization

[oAuth2AuthCode](../README.md#oAuth2AuthCode)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Successful response |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uploadTwingraph**
> FileUploadValidation uploadTwingraph(body)

To create a new graph from flat files,  you need to create a Zip file. This Zip file must countain two folders named Edges and Nodes.  .zip hierarchy: *main_folder/Nodes *main_folder/Edges  In each folder you can place one or multiple csv files containing your Nodes or Edges data.  Your csv files must follow the following header (column name) requirements:  The Nodes CSVs requires at least one column (the 1st).Column name = \'id\'. It will represent the nodes ID Ids must be populated with string  The Edges CSVs require three columns named, in order, * source * target * id  those colomns represent * The source of the edge * The target of the edge * The id of the edge  All following columns content are up to you. Note: This endpoint is activated only if `csm.platform.twincache.useGraphModule` property is set to true 

### Example

```typescript
import {
    DatasetApi,
    Configuration
} from '@cosmotech/api-ts';

const configuration = new Configuration();
const apiInstance = new DatasetApi(configuration);

let organizationId: string; //the Organization identifier (default to undefined)
let datasetId: string; //the Dataset identifier (default to undefined)
let body: File; //

const { status, data } = await apiInstance.uploadTwingraph(
    organizationId,
    datasetId,
    body
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **body** | **File**|  | |
| **organizationId** | [**string**] | the Organization identifier | defaults to undefined|
| **datasetId** | [**string**] | the Dataset identifier | defaults to undefined|


### Return type

**FileUploadValidation**

### Authorization

[oAuth2AuthCode](../README.md#oAuth2AuthCode)

### HTTP request headers

 - **Content-Type**: application/octet-stream
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**202** | File uploaded successfully. Processing... |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

