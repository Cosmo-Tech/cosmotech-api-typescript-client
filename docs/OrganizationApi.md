# OrganizationApi

All URIs are relative to *http://localhost*

|Method | HTTP request | Description|
|------------- | ------------- | -------------|
|[**addOrganizationAccessControl**](#addorganizationaccesscontrol) | **POST** /organizations/{organization_id}/security/access | Add a control access to the Organization|
|[**findAllOrganizations**](#findallorganizations) | **GET** /organizations | List all Organizations|
|[**findOrganizationById**](#findorganizationbyid) | **GET** /organizations/{organization_id} | Get the details of an Organization|
|[**getAllPermissions**](#getallpermissions) | **GET** /organizations/permissions | Get all permissions per components|
|[**getOrganizationAccessControl**](#getorganizationaccesscontrol) | **GET** /organizations/{organization_id}/security/access/{identity_id} | Get a control access for the Organization|
|[**getOrganizationPermissions**](#getorganizationpermissions) | **GET** /organizations/{organization_id}/permissions/{role} | Get the Organization permissions by given role|
|[**getOrganizationSecurity**](#getorganizationsecurity) | **GET** /organizations/{organization_id}/security | Get the Organization security information|
|[**getOrganizationSecurityUsers**](#getorganizationsecurityusers) | **GET** /organizations/{organization_id}/security/users | Get the Organization security users list|
|[**registerOrganization**](#registerorganization) | **POST** /organizations | Register a new organization|
|[**removeOrganizationAccessControl**](#removeorganizationaccesscontrol) | **DELETE** /organizations/{organization_id}/security/access/{identity_id} | Remove the specified access from the given Organization|
|[**setOrganizationDefaultSecurity**](#setorganizationdefaultsecurity) | **POST** /organizations/{organization_id}/security/default | Set the Organization default security|
|[**unregisterOrganization**](#unregisterorganization) | **DELETE** /organizations/{organization_id} | Unregister an organization|
|[**updateOrganization**](#updateorganization) | **PATCH** /organizations/{organization_id} | Update an Organization|
|[**updateOrganizationAccessControl**](#updateorganizationaccesscontrol) | **PATCH** /organizations/{organization_id}/security/access/{identity_id} | Update the specified access to User for an Organization|

# **addOrganizationAccessControl**
> OrganizationAccessControl addOrganizationAccessControl(organizationAccessControl)


### Example

```typescript
import {
    OrganizationApi,
    Configuration,
    OrganizationAccessControl
} from '@cosmotech/api-ts';

const configuration = new Configuration();
const apiInstance = new OrganizationApi(configuration);

let organizationId: string; //the Organization identifier (default to undefined)
let organizationAccessControl: OrganizationAccessControl; //the new Organization security access to add.

const { status, data } = await apiInstance.addOrganizationAccessControl(
    organizationId,
    organizationAccessControl
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **organizationAccessControl** | **OrganizationAccessControl**| the new Organization security access to add. | |
| **organizationId** | [**string**] | the Organization identifier | defaults to undefined|


### Return type

**OrganizationAccessControl**

### Authorization

[oAuth2AuthCode](../README.md#oAuth2AuthCode)

### HTTP request headers

 - **Content-Type**: application/json, application/yaml
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**201** | The Organization access |  -  |
|**404** | the Organization specified is unknown or you don\&#39;t have access to it |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **findAllOrganizations**
> Array<Organization> findAllOrganizations()


### Example

```typescript
import {
    OrganizationApi,
    Configuration
} from '@cosmotech/api-ts';

const configuration = new Configuration();
const apiInstance = new OrganizationApi(configuration);

let page: number; //page number to query (first page is at index 0) (optional) (default to undefined)
let size: number; //amount of result by page (optional) (default to undefined)

const { status, data } = await apiInstance.findAllOrganizations(
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

**Array<Organization>**

### Authorization

[oAuth2AuthCode](../README.md#oAuth2AuthCode)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | the list of Organizations |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **findOrganizationById**
> Organization findOrganizationById()


### Example

```typescript
import {
    OrganizationApi,
    Configuration
} from '@cosmotech/api-ts';

const configuration = new Configuration();
const apiInstance = new OrganizationApi(configuration);

let organizationId: string; //the Organization identifier (default to undefined)

const { status, data } = await apiInstance.findOrganizationById(
    organizationId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **organizationId** | [**string**] | the Organization identifier | defaults to undefined|


### Return type

**Organization**

### Authorization

[oAuth2AuthCode](../README.md#oAuth2AuthCode)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | the Organization details |  -  |
|**404** | the Organization specified is unknown or you don\&#39;t have access to it |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAllPermissions**
> Array<ComponentRolePermissions> getAllPermissions()


### Example

```typescript
import {
    OrganizationApi,
    Configuration
} from '@cosmotech/api-ts';

const configuration = new Configuration();
const apiInstance = new OrganizationApi(configuration);

const { status, data } = await apiInstance.getAllPermissions();
```

### Parameters
This endpoint does not have any parameters.


### Return type

**Array<ComponentRolePermissions>**

### Authorization

[oAuth2AuthCode](../README.md#oAuth2AuthCode)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | The security permission list |  -  |

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

let organizationId: string; //the Organization identifier (default to undefined)
let identityId: string; //the User identifier (default to undefined)

const { status, data } = await apiInstance.getOrganizationAccessControl(
    organizationId,
    identityId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **organizationId** | [**string**] | the Organization identifier | defaults to undefined|
| **identityId** | [**string**] | the User identifier | defaults to undefined|


### Return type

**OrganizationAccessControl**

### Authorization

[oAuth2AuthCode](../README.md#oAuth2AuthCode)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


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

let organizationId: string; //the Organization identifier (default to undefined)
let role: string; //the Role (default to undefined)

const { status, data } = await apiInstance.getOrganizationPermissions(
    organizationId,
    role
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **organizationId** | [**string**] | the Organization identifier | defaults to undefined|
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

let organizationId: string; //the Organization identifier (default to undefined)

const { status, data } = await apiInstance.getOrganizationSecurity(
    organizationId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **organizationId** | [**string**] | the Organization identifier | defaults to undefined|


### Return type

**OrganizationSecurity**

### Authorization

[oAuth2AuthCode](../README.md#oAuth2AuthCode)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | The Organization security |  -  |
|**404** | the Organization specified is unknown or you don\&#39;t have access to it |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getOrganizationSecurityUsers**
> Array<string> getOrganizationSecurityUsers()


### Example

```typescript
import {
    OrganizationApi,
    Configuration
} from '@cosmotech/api-ts';

const configuration = new Configuration();
const apiInstance = new OrganizationApi(configuration);

let organizationId: string; //The Organization identifier (default to undefined)

const { status, data } = await apiInstance.getOrganizationSecurityUsers(
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
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | The Organization security users list |  -  |
|**404** | the Organization specified is unknown or you don\&#39;t have access to it |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **registerOrganization**
> Organization registerOrganization(organization)


### Example

```typescript
import {
    OrganizationApi,
    Configuration,
    Organization
} from '@cosmotech/api-ts';

const configuration = new Configuration();
const apiInstance = new OrganizationApi(configuration);

let organization: Organization; //the Organization to register

const { status, data } = await apiInstance.registerOrganization(
    organization
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **organization** | **Organization**| the Organization to register | |


### Return type

**Organization**

### Authorization

[oAuth2AuthCode](../README.md#oAuth2AuthCode)

### HTTP request headers

 - **Content-Type**: application/json, application/yaml
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**201** | the Organization details |  -  |
|**400** | Bad request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **removeOrganizationAccessControl**
> removeOrganizationAccessControl()


### Example

```typescript
import {
    OrganizationApi,
    Configuration
} from '@cosmotech/api-ts';

const configuration = new Configuration();
const apiInstance = new OrganizationApi(configuration);

let organizationId: string; //the Organization identifier (default to undefined)
let identityId: string; //the User identifier (default to undefined)

const { status, data } = await apiInstance.removeOrganizationAccessControl(
    organizationId,
    identityId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **organizationId** | [**string**] | the Organization identifier | defaults to undefined|
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
|**404** | the Organization or the user specified is unknown or you don\&#39;t have access to them |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **setOrganizationDefaultSecurity**
> OrganizationSecurity setOrganizationDefaultSecurity(organizationRole)


### Example

```typescript
import {
    OrganizationApi,
    Configuration,
    OrganizationRole
} from '@cosmotech/api-ts';

const configuration = new Configuration();
const apiInstance = new OrganizationApi(configuration);

let organizationId: string; //the Organization identifier (default to undefined)
let organizationRole: OrganizationRole; //This change the organization default security. The default security is the role assigned to any person not on the Access Control List. If the default security is None, then nobody outside of the ACL can access the organization.

const { status, data } = await apiInstance.setOrganizationDefaultSecurity(
    organizationId,
    organizationRole
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **organizationRole** | **OrganizationRole**| This change the organization default security. The default security is the role assigned to any person not on the Access Control List. If the default security is None, then nobody outside of the ACL can access the organization. | |
| **organizationId** | [**string**] | the Organization identifier | defaults to undefined|


### Return type

**OrganizationSecurity**

### Authorization

[oAuth2AuthCode](../README.md#oAuth2AuthCode)

### HTTP request headers

 - **Content-Type**: application/json, application/yaml
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**201** | The Organization default visibility |  -  |
|**404** | the Organization specified is unknown or you don\&#39;t have access to it |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **unregisterOrganization**
> unregisterOrganization()


### Example

```typescript
import {
    OrganizationApi,
    Configuration
} from '@cosmotech/api-ts';

const configuration = new Configuration();
const apiInstance = new OrganizationApi(configuration);

let organizationId: string; //the Organization identifier (default to undefined)

const { status, data } = await apiInstance.unregisterOrganization(
    organizationId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **organizationId** | [**string**] | the Organization identifier | defaults to undefined|


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
|**404** | the Organization specified is unknown or you don\&#39;t have access to it |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateOrganization**
> Organization updateOrganization(organization)


### Example

```typescript
import {
    OrganizationApi,
    Configuration,
    Organization
} from '@cosmotech/api-ts';

const configuration = new Configuration();
const apiInstance = new OrganizationApi(configuration);

let organizationId: string; //the Organization identifier (default to undefined)
let organization: Organization; //the new Organization details. This endpoint can\'t be used to update security

const { status, data } = await apiInstance.updateOrganization(
    organizationId,
    organization
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **organization** | **Organization**| the new Organization details. This endpoint can\&#39;t be used to update security | |
| **organizationId** | [**string**] | the Organization identifier | defaults to undefined|


### Return type

**Organization**

### Authorization

[oAuth2AuthCode](../README.md#oAuth2AuthCode)

### HTTP request headers

 - **Content-Type**: application/json, application/yaml
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | the organization details |  -  |
|**400** | Bad request |  -  |
|**404** | the Organization specified is unknown or you don\&#39;t have access to it |  -  |

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

let organizationId: string; //the Organization identifier (default to undefined)
let identityId: string; //the User identifier (default to undefined)
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
| **organizationId** | [**string**] | the Organization identifier | defaults to undefined|
| **identityId** | [**string**] | the User identifier | defaults to undefined|


### Return type

**OrganizationAccessControl**

### Authorization

[oAuth2AuthCode](../README.md#oAuth2AuthCode)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | The Organization access |  -  |
|**404** | The Organization specified is unknown or you don\&#39;t have access to it |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

