# MetaApi

All URIs are relative to *http://localhost:8080*

|Method | HTTP request | Description|
|------------- | ------------- | -------------|
|[**about**](#about) | **GET** /about | Get various information about the API|

# **about**
> AboutInfo about()


### Example

```typescript
import {
    MetaApi,
    Configuration
} from '@cosmotech/api-ts';

const configuration = new Configuration();
const apiInstance = new MetaApi(configuration);

const { status, data } = await apiInstance.about();
```

### Parameters
This endpoint does not have any parameters.


### Return type

**AboutInfo**

### Authorization

[oAuth2AuthCode](../README.md#oAuth2AuthCode)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/yaml


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | API information details |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

