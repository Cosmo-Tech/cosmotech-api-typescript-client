# IAMInfoApi

All URIs are relative to *http://localhost:8080*

|Method | HTTP request | Description|
|------------- | ------------- | -------------|
|[**listIAMGroups**](#listiamgroups) | **GET** /iaminfo/groups | Get the list of all groups|
|[**listIAMMembers**](#listiammembers) | **GET** /iaminfo/members | Get ALL IAM members list|

# **listIAMGroups**
> Array<string> listIAMGroups()


### Example

```typescript
import {
    IAMInfoApi,
    Configuration
} from '@cosmotech/api-ts';

const configuration = new Configuration();
const apiInstance = new IAMInfoApi(configuration);

const { status, data } = await apiInstance.listIAMGroups();
```

### Parameters
This endpoint does not have any parameters.


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
|**200** | The list of all groups |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listIAMMembers**
> Members listIAMMembers()


### Example

```typescript
import {
    IAMInfoApi,
    Configuration
} from '@cosmotech/api-ts';

const configuration = new Configuration();
const apiInstance = new IAMInfoApi(configuration);

const { status, data } = await apiInstance.listIAMMembers();
```

### Parameters
This endpoint does not have any parameters.


### Return type

**Members**

### Authorization

[oAuth2AuthCode](../README.md#oAuth2AuthCode)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/yaml


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | The ALL members list |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

