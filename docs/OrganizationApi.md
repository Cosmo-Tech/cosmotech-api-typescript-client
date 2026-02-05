# OrganizationApi

All URIs are relative to *http://localhost:8080*

|Method | HTTP request | Description|
|------------- | ------------- | -------------|
|[**createOrganization**](#createorganization) | **POST** /organizations | Create a new organization|
|[**createOrganizationAccessControl**](#createorganizationaccesscontrol) | **POST** /organizations/{organization_id}/security/access | Add a control access to the Organization|
|[**deleteOrganization**](#deleteorganization) | **DELETE** /organizations/{organization_id} | Delete an organization|
|[**deleteOrganizationAccessControl**](#deleteorganizationaccesscontrol) | **DELETE** /organizations/{organization_id}/security/access/{identity_id} | Remove the specified access from the given Organization|
|[**getOrganization**](#getorganization) | **GET** /organizations/{organization_id} | Get the details of an Organization|
|[**getOrganizationAccessControl**](#getorganizationaccesscontrol) | **GET** /organizations/{organization_id}/security/access/{identity_id} | Get a control access for the Organization|
|[**getOrganizationPermissions**](#getorganizationpermissions) | **GET** /organizations/{organization_id}/permissions/{role} | Get the Organization permissions by given role|
|[**getOrganizationSecurity**](#getorganizationsecurity) | **GET** /organizations/{organization_id}/security | Get the Organization security information|
|[**listOrganizationSecurityUsers**](#listorganizationsecurityusers) | **GET** /organizations/{organization_id}/security/users | Get the Organization security users list|
|[**listOrganizations**](#listorganizations) | **GET** /organizations | List all Organizations|
|[**listPermissions**](#listpermissions) | **GET** /organizations/permissions | Get all permissions per components|
|[**updateOrganization**](#updateorganization) | **PATCH** /organizations/{organization_id} | Update an Organization|
|[**updateOrganizationAccessControl**](#updateorganizationaccesscontrol) | **PATCH** /organizations/{organization_id}/security/access/{identity_id} | Update the specified access to User for an Organization|
|[**updateOrganizationDefaultSecurity**](#updateorganizationdefaultsecurity) | **PATCH** /organizations/{organization_id}/security/default | Update the Organization default security|

# **createOrganization**
> Organization createOrganization(organizationCreateRequest)

Create a new organization.

### Example

```typescript
import {
    OrganizationApi,
    Configuration,
    OrganizationCreateRequest
} from '@cosmotech/api-ts';

const configuration = new Configuration();
const apiInstance = new OrganizationApi(configuration);

let organizationCreateRequest: OrganizationCreateRequest; //

const { status, data } = await apiInstance.createOrganization(
    organizationCreateRequest
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **organizationCreateRequest** | **OrganizationCreateRequest**|  | |


### Return type

**Organization**

### Authorization

[oAuth2AuthCode](../README.md#oAuth2AuthCode)

### HTTP request headers

 - **Content-Type**: application/json, application/yaml
 - **Accept**: application/json, application/yaml


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**201** | The Organization details |  -  |
|**400** | Bad request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createOrganizationAccessControl**
> OrganizationAccessControl createOrganizationAccessControl(organizationAccessControl)

Grant access to an organization for a user or group.

### Example

```typescript
import {
    OrganizationApi,
    Configuration,
    OrganizationAccessControl
} from '@cosmotech/api-ts';

const configuration = new Configuration();
const apiInstance = new OrganizationApi(configuration);

let organizationId: string; //The Organization identifier (default to undefined)
let organizationAccessControl: OrganizationAccessControl; //The new Organization security access to add.

const { status, data } = await apiInstance.createOrganizationAccessControl(
    organizationId,
    organizationAccessControl
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **organizationAccessControl** | **OrganizationAccessControl**| The new Organization security access to add. | |
| **organizationId** | [**string**] | The Organization identifier | defaults to undefined|


### Return type

**OrganizationAccessControl**

### Authorization

[oAuth2AuthCode](../README.md#oAuth2AuthCode)

### HTTP request headers

 - **Content-Type**: application/json, application/yaml
 - **Accept**: application/json, application/yaml


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**201** | The Organization access |  -  |
|**404** | The Organization specified is unknown or you don\&#39;t have access to it |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteOrganization**
> deleteOrganization()

Permanently delete an organization. This operation cannot be undone.

### Example

```typescript
import {
    OrganizationApi,
    Configuration
} from '@cosmotech/api-ts';

const configuration = new Configuration();
const apiInstance = new OrganizationApi(configuration);

let organizationId: string; //The Organization identifier (default to undefined)

const { status, data } = await apiInstance.deleteOrganization(
    organizationId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **organizationId** | [**string**] | The Organization identifier | defaults to undefined|


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
|**404** | The Organization specified is unknown or you don\&#39;t have access to it |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteOrganizationAccessControl**
> deleteOrganizationAccessControl()


### Example

```typescript
import {
    OrganizationApi,
    Configuration
} from '@cosmotech/api-ts';

const configuration = new Configuration();
const apiInstance = new OrganizationApi(configuration);

let organizationId: string; //The Organization identifier (default to undefined)
let identityId: string; //The User identifier (default to undefined)

const { status, data } = await apiInstance.deleteOrganizationAccessControl(
    organizationId,
    identityId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **organizationId** | [**string**] | The Organization identifier | defaults to undefined|
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
|**404** | The Organization or the user specified is unknown or you don\&#39;t have access to them |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getOrganization**
> Organization getOrganization()

Retrieve detailed information about an organization.

### Example

```typescript
import {
    OrganizationApi,
    Configuration
} from '@cosmotech/api-ts';

const configuration = new Configuration();
const apiInstance = new OrganizationApi(configuration);

let organizationId: string; //The Organization identifier (default to undefined)

const { status, data } = await apiInstance.getOrganization(
    organizationId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **organizationId** | [**string**] | The Organization identifier | defaults to undefined|


### Return type

**Organization**

### Authorization

[oAuth2AuthCode](../README.md#oAuth2AuthCode)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/yaml


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | The Organization details |  -  |
|**404** | The Organization specified is unknown or you don\&#39;t have access to it |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getOrganizationAccessControl**
> OrganizationAccessControl getOrganizationAccessControl()


### Example

```typescript
import {
    OrganizationApi,
    Configuration
} from '@cosmotech/api-ts';

const configuration = new Configuration();
const apiInstance = new OrganizationApi(configuration);

let organizationId: string; //The Organization identifier (default to undefined)
let identityId: string; //The User identifier (default to undefined)

const { status, data } = await apiInstance.getOrganizationAccessControl(
    organizationId,
    identityId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **organizationId** | [**string**] | The Organization identifier | defaults to undefined|
| **identityId** | [**string**] | The User identifier | defaults to undefined|


### Return type

**OrganizationAccessControl**

### Authorization

[oAuth2AuthCode](../README.md#oAuth2AuthCode)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/yaml


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | The Organization access |  -  |
|**404** | The Organization or user specified is unknown or you don\&#39;t have access to it |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getOrganizationPermissions**
> Array<string> getOrganizationPermissions()


### Example

```typescript
import {
    OrganizationApi,
    Configuration
} from '@cosmotech/api-ts';

const configuration = new Configuration();
const apiInstance = new OrganizationApi(configuration);

let organizationId: string; //The Organization identifier (default to undefined)
let role: string; //The Role (default to undefined)

const { status, data } = await apiInstance.getOrganizationPermissions(
    organizationId,
    role
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **organizationId** | [**string**] | The Organization identifier | defaults to undefined|
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
|**200** | The Organization security permission list |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getOrganizationSecurity**
> OrganizationSecurity getOrganizationSecurity()


### Example

```typescript
import {
    OrganizationApi,
    Configuration
} from '@cosmotech/api-ts';

const configuration = new Configuration();
const apiInstance = new OrganizationApi(configuration);

let organizationId: string; //The Organization identifier (default to undefined)

const { status, data } = await apiInstance.getOrganizationSecurity(
    organizationId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **organizationId** | [**string**] | The Organization identifier | defaults to undefined|


### Return type

**OrganizationSecurity**

### Authorization

[oAuth2AuthCode](../README.md#oAuth2AuthCode)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/yaml


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | The Organization security |  -  |
|**404** | The Organization specified is unknown or you don\&#39;t have access to it |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listOrganizationSecurityUsers**
> Array<string> listOrganizationSecurityUsers()


### Example

```typescript
import {
    OrganizationApi,
    Configuration
} from '@cosmotech/api-ts';

const configuration = new Configuration();
const apiInstance = new OrganizationApi(configuration);

let organizationId: string; //The Organization identifier (default to undefined)

const { status, data } = await apiInstance.listOrganizationSecurityUsers(
    organizationId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **organizationId** | [**string**] | The Organization identifier | defaults to undefined|


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
|**200** | The Organization security users list |  -  |
|**404** | The Organization specified is unknown or you don\&#39;t have access to it |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listOrganizations**
> Array<Organization> listOrganizations()

Retrieve a paginated list of all organizations the authenticated user has permission to view. Use \'page\' and \'size\' query parameters for pagination.

### Example

```typescript
import {
    OrganizationApi,
    Configuration
} from '@cosmotech/api-ts';

const configuration = new Configuration();
const apiInstance = new OrganizationApi(configuration);

let page: number; //Page number to query (first page is at index 0) (optional) (default to undefined)
let size: number; //Amount of result by page (optional) (default to undefined)

const { status, data } = await apiInstance.listOrganizations(
    page,
    size
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **page** | [**number**] | Page number to query (first page is at index 0) | (optional) defaults to undefined|
| **size** | [**number**] | Amount of result by page | (optional) defaults to undefined|


### Return type

**Array<Organization>**

### Authorization

[oAuth2AuthCode](../README.md#oAuth2AuthCode)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/yaml


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | The list of Organizations |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listPermissions**
> Array<ComponentRolePermissions> listPermissions()


### Example

```typescript
import {
    OrganizationApi,
    Configuration
} from '@cosmotech/api-ts';

const configuration = new Configuration();
const apiInstance = new OrganizationApi(configuration);

const { status, data } = await apiInstance.listPermissions();
```

### Parameters
This endpoint does not have any parameters.


### Return type

**Array<ComponentRolePermissions>**

### Authorization

[oAuth2AuthCode](../README.md#oAuth2AuthCode)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/yaml


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | The security permission list |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateOrganization**
> Organization updateOrganization(organizationUpdateRequest)


### Example

```typescript
import {
    OrganizationApi,
    Configuration,
    OrganizationUpdateRequest
} from '@cosmotech/api-ts';

const configuration = new Configuration();
const apiInstance = new OrganizationApi(configuration);

let organizationId: string; //The Organization identifier (default to undefined)
let organizationUpdateRequest: OrganizationUpdateRequest; //The new Organization details. This endpoint can\'t be used to update security

const { status, data } = await apiInstance.updateOrganization(
    organizationId,
    organizationUpdateRequest
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **organizationUpdateRequest** | **OrganizationUpdateRequest**| The new Organization details. This endpoint can\&#39;t be used to update security | |
| **organizationId** | [**string**] | The Organization identifier | defaults to undefined|


### Return type

**Organization**

### Authorization

[oAuth2AuthCode](../README.md#oAuth2AuthCode)

### HTTP request headers

 - **Content-Type**: application/json, application/yaml
 - **Accept**: application/json, application/yaml


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | The organization details |  -  |
|**400** | Bad request |  -  |
|**404** | The Organization specified is unknown or you don\&#39;t have access to it |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateOrganizationAccessControl**
> OrganizationAccessControl updateOrganizationAccessControl(organizationRole)


### Example

```typescript
import {
    OrganizationApi,
    Configuration,
    OrganizationRole
} from '@cosmotech/api-ts';

const configuration = new Configuration();
const apiInstance = new OrganizationApi(configuration);

let organizationId: string; //The Organization identifier (default to undefined)
let identityId: string; //The User identifier (default to undefined)
let organizationRole: OrganizationRole; //The new Organization Access Control

const { status, data } = await apiInstance.updateOrganizationAccessControl(
    organizationId,
    identityId,
    organizationRole
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **organizationRole** | **OrganizationRole**| The new Organization Access Control | |
| **organizationId** | [**string**] | The Organization identifier | defaults to undefined|
| **identityId** | [**string**] | The User identifier | defaults to undefined|


### Return type

**OrganizationAccessControl**

### Authorization

[oAuth2AuthCode](../README.md#oAuth2AuthCode)

### HTTP request headers

 - **Content-Type**: application/json, application/yaml
 - **Accept**: application/json, application/yaml


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | The Organization access |  -  |
|**404** | The Organization specified is unknown or you don\&#39;t have access to it |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateOrganizationDefaultSecurity**
> OrganizationSecurity updateOrganizationDefaultSecurity(organizationRole)


### Example

```typescript
import {
    OrganizationApi,
    Configuration,
    OrganizationRole
} from '@cosmotech/api-ts';

const configuration = new Configuration();
const apiInstance = new OrganizationApi(configuration);

let organizationId: string; //The Organization identifier (default to undefined)
let organizationRole: OrganizationRole; //This change the organization default security. The default security is the role assigned to any person not on the Access Control List. If the default security is None, then nobody outside of the ACL can access the organization.

const { status, data } = await apiInstance.updateOrganizationDefaultSecurity(
    organizationId,
    organizationRole
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **organizationRole** | **OrganizationRole**| This change the organization default security. The default security is the role assigned to any person not on the Access Control List. If the default security is None, then nobody outside of the ACL can access the organization. | |
| **organizationId** | [**string**] | The Organization identifier | defaults to undefined|


### Return type

**OrganizationSecurity**

### Authorization

[oAuth2AuthCode](../README.md#oAuth2AuthCode)

### HTTP request headers

 - **Content-Type**: application/json, application/yaml
 - **Accept**: application/json, application/yaml


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**201** | The Organization default visibility |  -  |
|**404** | The Organization specified is unknown or you don\&#39;t have access to it |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

