# ConnectorApi

All URIs are relative to *http://localhost*

|Method | HTTP request | Description|
|------------- | ------------- | -------------|
|[**findAllConnectors**](#findallconnectors) | **GET** /connectors | List all Connectors|
|[**findConnectorById**](#findconnectorbyid) | **GET** /connectors/{connector_id} | Get the details of a connector|
|[**registerConnector**](#registerconnector) | **POST** /connectors | Register a new connector|
|[**unregisterConnector**](#unregisterconnector) | **DELETE** /connectors/{connector_id} | Unregister a connector|

# **findAllConnectors**
> Array<Connector> findAllConnectors()


### Example

```typescript
import {
    ConnectorApi,
    Configuration
} from '@cosmotech/api-ts';

const configuration = new Configuration();
const apiInstance = new ConnectorApi(configuration);

let page: number; //page number to query (first page is at index 0) (optional) (default to undefined)
let size: number; //amount of result by page (optional) (default to undefined)

const { status, data } = await apiInstance.findAllConnectors(
    page,
    size
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **page** | [**number**] | page number to query (first page is at index 0) | (optional) defaults to undefined|
| **size** | [**number**] | amount of result by page | (optional) defaults to undefined|


### Return type

**Array<Connector>**

### Authorization

[oAuth2AuthCode](../README.md#oAuth2AuthCode)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | the list of Connectors |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **findConnectorById**
> Connector findConnectorById()


### Example

```typescript
import {
    ConnectorApi,
    Configuration
} from '@cosmotech/api-ts';

const configuration = new Configuration();
const apiInstance = new ConnectorApi(configuration);

let connectorId: string; //the Connector identifier (default to undefined)

const { status, data } = await apiInstance.findConnectorById(
    connectorId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **connectorId** | [**string**] | the Connector identifier | defaults to undefined|


### Return type

**Connector**

### Authorization

[oAuth2AuthCode](../README.md#oAuth2AuthCode)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | the Connector details |  -  |
|**404** | the Connector specified is unknown or you don\&#39;t have access to it |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **registerConnector**
> Connector registerConnector(connector)


### Example

```typescript
import {
    ConnectorApi,
    Configuration,
    Connector
} from '@cosmotech/api-ts';

const configuration = new Configuration();
const apiInstance = new ConnectorApi(configuration);

let connector: Connector; //the Connector to register

const { status, data } = await apiInstance.registerConnector(
    connector
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **connector** | **Connector**| the Connector to register | |


### Return type

**Connector**

### Authorization

[oAuth2AuthCode](../README.md#oAuth2AuthCode)

### HTTP request headers

 - **Content-Type**: application/json, application/yaml
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**201** | the connector details |  -  |
|**400** | Bad request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **unregisterConnector**
> unregisterConnector()


### Example

```typescript
import {
    ConnectorApi,
    Configuration
} from '@cosmotech/api-ts';

const configuration = new Configuration();
const apiInstance = new ConnectorApi(configuration);

let connectorId: string; //the Connector identifier (default to undefined)

const { status, data } = await apiInstance.unregisterConnector(
    connectorId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **connectorId** | [**string**] | the Connector identifier | defaults to undefined|


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
|**404** | the Connector specified is unknown or you don\&#39;t have access to it |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

