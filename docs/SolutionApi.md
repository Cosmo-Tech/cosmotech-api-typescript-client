# SolutionApi

All URIs are relative to *http://localhost*

|Method | HTTP request | Description|
|------------- | ------------- | -------------|
|[**addOrReplaceParameterGroups**](#addorreplaceparametergroups) | **POST** /organizations/{organization_id}/solutions/{solution_id}/parameterGroups | Add Parameter Groups. Any item with the same ID will be overwritten|
|[**addOrReplaceParameters**](#addorreplaceparameters) | **POST** /organizations/{organization_id}/solutions/{solution_id}/parameters | Add Parameters. Any item with the same ID will be overwritten|
|[**addOrReplaceRunTemplates**](#addorreplaceruntemplates) | **POST** /organizations/{organization_id}/solutions/{solution_id}/runTemplates | Add Run Templates. Any item with the same ID will be overwritten|
|[**addSolutionAccessControl**](#addsolutionaccesscontrol) | **POST** /organizations/{organization_id}/solutions/{solution_id}/security/access | Add a control access to the Solution|
|[**createSolution**](#createsolution) | **POST** /organizations/{organization_id}/solutions | Register a new solution|
|[**deleteSolution**](#deletesolution) | **DELETE** /organizations/{organization_id}/solutions/{solution_id} | Delete a solution|
|[**deleteSolutionRunTemplate**](#deletesolutionruntemplate) | **DELETE** /organizations/{organization_id}/solutions/{solution_id}/runTemplates/{run_template_id} | Remove the specified Solution Run Template|
|[**findAllSolutions**](#findallsolutions) | **GET** /organizations/{organization_id}/solutions | List all Solutions|
|[**findSolutionById**](#findsolutionbyid) | **GET** /organizations/{organization_id}/solutions/{solution_id} | Get the details of a solution|
|[**getSolutionAccessControl**](#getsolutionaccesscontrol) | **GET** /organizations/{organization_id}/solutions/{solution_id}/security/access/{identity_id} | Get a control access for the Solution|
|[**getSolutionSecurity**](#getsolutionsecurity) | **GET** /organizations/{organization_id}/solutions/{solution_id}/security | Get the Solution security information|
|[**getSolutionSecurityUsers**](#getsolutionsecurityusers) | **GET** /organizations/{organization_id}/solutions/{solution_id}/security/users | Get the Solution security users list|
|[**removeAllRunTemplates**](#removeallruntemplates) | **DELETE** /organizations/{organization_id}/solutions/{solution_id}/runTemplates | Remove all Run Templates from the Solution specified|
|[**removeAllSolutionParameterGroups**](#removeallsolutionparametergroups) | **DELETE** /organizations/{organization_id}/solutions/{solution_id}/parameterGroups | Remove all Parameter Groups from the Solution specified|
|[**removeAllSolutionParameters**](#removeallsolutionparameters) | **DELETE** /organizations/{organization_id}/solutions/{solution_id}/parameters | Remove all Parameters from the Solution specified|
|[**removeSolutionAccessControl**](#removesolutionaccesscontrol) | **DELETE** /organizations/{organization_id}/solutions/{solution_id}/security/access/{identity_id} | Remove the specified access from the given Organization Solution|
|[**setSolutionDefaultSecurity**](#setsolutiondefaultsecurity) | **POST** /organizations/{organization_id}/solutions/{solution_id}/security/default | Set the Solution default security|
|[**updateSolution**](#updatesolution) | **PATCH** /organizations/{organization_id}/solutions/{solution_id} | Update a solution|
|[**updateSolutionAccessControl**](#updatesolutionaccesscontrol) | **PATCH** /organizations/{organization_id}/solutions/{solution_id}/security/access/{identity_id} | Update the specified access to User for a Solution|
|[**updateSolutionRunTemplate**](#updatesolutionruntemplate) | **PATCH** /organizations/{organization_id}/solutions/{solution_id}/runTemplates/{run_template_id} | Update the specified Solution Run Template|

# **addOrReplaceParameterGroups**
> Array<RunTemplateParameterGroup> addOrReplaceParameterGroups(runTemplateParameterGroup)


### Example

```typescript
import {
    SolutionApi,
    Configuration
} from '@cosmotech/api-ts';

const configuration = new Configuration();
const apiInstance = new SolutionApi(configuration);

let organizationId: string; //the Organization identifier (default to undefined)
let solutionId: string; //the Solution identifier (default to undefined)
let runTemplateParameterGroup: Array<RunTemplateParameterGroup>; //the Parameter Groups

const { status, data } = await apiInstance.addOrReplaceParameterGroups(
    organizationId,
    solutionId,
    runTemplateParameterGroup
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **runTemplateParameterGroup** | **Array<RunTemplateParameterGroup>**| the Parameter Groups | |
| **organizationId** | [**string**] | the Organization identifier | defaults to undefined|
| **solutionId** | [**string**] | the Solution identifier | defaults to undefined|


### Return type

**Array<RunTemplateParameterGroup>**

### Authorization

[oAuth2AuthCode](../README.md#oAuth2AuthCode)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**201** | the Parameter Groups |  -  |
|**400** | Bad request |  -  |
|**404** | the Solution specified is unknown or you don\&#39;t have access to it |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **addOrReplaceParameters**
> Array<RunTemplateParameter> addOrReplaceParameters(runTemplateParameter)


### Example

```typescript
import {
    SolutionApi,
    Configuration
} from '@cosmotech/api-ts';

const configuration = new Configuration();
const apiInstance = new SolutionApi(configuration);

let organizationId: string; //the Organization identifier (default to undefined)
let solutionId: string; //the Solution identifier (default to undefined)
let runTemplateParameter: Array<RunTemplateParameter>; //the Parameters

const { status, data } = await apiInstance.addOrReplaceParameters(
    organizationId,
    solutionId,
    runTemplateParameter
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **runTemplateParameter** | **Array<RunTemplateParameter>**| the Parameters | |
| **organizationId** | [**string**] | the Organization identifier | defaults to undefined|
| **solutionId** | [**string**] | the Solution identifier | defaults to undefined|


### Return type

**Array<RunTemplateParameter>**

### Authorization

[oAuth2AuthCode](../README.md#oAuth2AuthCode)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**201** | the Parameters |  -  |
|**400** | Bad request |  -  |
|**404** | the Solution specified is unknown or you don\&#39;t have access to it |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **addOrReplaceRunTemplates**
> Array<RunTemplate> addOrReplaceRunTemplates(runTemplate)


### Example

```typescript
import {
    SolutionApi,
    Configuration
} from '@cosmotech/api-ts';

const configuration = new Configuration();
const apiInstance = new SolutionApi(configuration);

let organizationId: string; //the Organization identifier (default to undefined)
let solutionId: string; //the Solution identifier (default to undefined)
let runTemplate: Array<RunTemplate>; //the Run Templates

const { status, data } = await apiInstance.addOrReplaceRunTemplates(
    organizationId,
    solutionId,
    runTemplate
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **runTemplate** | **Array<RunTemplate>**| the Run Templates | |
| **organizationId** | [**string**] | the Organization identifier | defaults to undefined|
| **solutionId** | [**string**] | the Solution identifier | defaults to undefined|


### Return type

**Array<RunTemplate>**

### Authorization

[oAuth2AuthCode](../README.md#oAuth2AuthCode)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**201** | the Parameters |  -  |
|**400** | Bad request |  -  |
|**404** | the Solution specified is unknown or you don\&#39;t have access to it |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **addSolutionAccessControl**
> SolutionAccessControl addSolutionAccessControl(solutionAccessControl)


### Example

```typescript
import {
    SolutionApi,
    Configuration,
    SolutionAccessControl
} from '@cosmotech/api-ts';

const configuration = new Configuration();
const apiInstance = new SolutionApi(configuration);

let organizationId: string; //the Organization identifier (default to undefined)
let solutionId: string; //the Solution identifier (default to undefined)
let solutionAccessControl: SolutionAccessControl; //the new Solution security access to add.

const { status, data } = await apiInstance.addSolutionAccessControl(
    organizationId,
    solutionId,
    solutionAccessControl
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **solutionAccessControl** | **SolutionAccessControl**| the new Solution security access to add. | |
| **organizationId** | [**string**] | the Organization identifier | defaults to undefined|
| **solutionId** | [**string**] | the Solution identifier | defaults to undefined|


### Return type

**SolutionAccessControl**

### Authorization

[oAuth2AuthCode](../README.md#oAuth2AuthCode)

### HTTP request headers

 - **Content-Type**: application/json, application/yaml
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**201** | The Solution access |  -  |
|**404** | the Solution specified is unknown or you don\&#39;t have access to it |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createSolution**
> Solution createSolution(solution)


### Example

```typescript
import {
    SolutionApi,
    Configuration,
    Solution
} from '@cosmotech/api-ts';

const configuration = new Configuration();
const apiInstance = new SolutionApi(configuration);

let organizationId: string; //the Organization identifier (default to undefined)
let solution: Solution; //the Solution to create

const { status, data } = await apiInstance.createSolution(
    organizationId,
    solution
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **solution** | **Solution**| the Solution to create | |
| **organizationId** | [**string**] | the Organization identifier | defaults to undefined|


### Return type

**Solution**

### Authorization

[oAuth2AuthCode](../README.md#oAuth2AuthCode)

### HTTP request headers

 - **Content-Type**: application/json, application/yaml
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**201** | the solution details |  -  |
|**400** | Bad request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteSolution**
> deleteSolution()


### Example

```typescript
import {
    SolutionApi,
    Configuration
} from '@cosmotech/api-ts';

const configuration = new Configuration();
const apiInstance = new SolutionApi(configuration);

let organizationId: string; //the Organization identifier (default to undefined)
let solutionId: string; //the Solution identifier (default to undefined)

const { status, data } = await apiInstance.deleteSolution(
    organizationId,
    solutionId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **organizationId** | [**string**] | the Organization identifier | defaults to undefined|
| **solutionId** | [**string**] | the Solution identifier | defaults to undefined|


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
|**404** | the Solution specified is unknown or you don\&#39;t have access to it |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteSolutionRunTemplate**
> deleteSolutionRunTemplate()


### Example

```typescript
import {
    SolutionApi,
    Configuration
} from '@cosmotech/api-ts';

const configuration = new Configuration();
const apiInstance = new SolutionApi(configuration);

let organizationId: string; //the Organization identifier (default to undefined)
let solutionId: string; //the Solution identifier (default to undefined)
let runTemplateId: string; //the Run Template identifier (default to undefined)

const { status, data } = await apiInstance.deleteSolutionRunTemplate(
    organizationId,
    solutionId,
    runTemplateId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **organizationId** | [**string**] | the Organization identifier | defaults to undefined|
| **solutionId** | [**string**] | the Solution identifier | defaults to undefined|
| **runTemplateId** | [**string**] | the Run Template identifier | defaults to undefined|


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
|**404** | the Solution specified is unknown or you don\&#39;t have access to it |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **findAllSolutions**
> Array<Solution> findAllSolutions()


### Example

```typescript
import {
    SolutionApi,
    Configuration
} from '@cosmotech/api-ts';

const configuration = new Configuration();
const apiInstance = new SolutionApi(configuration);

let organizationId: string; //the Organization identifier (default to undefined)
let page: number; //page number to query (first page is at index 0) (optional) (default to undefined)
let size: number; //amount of result by page (optional) (default to undefined)

const { status, data } = await apiInstance.findAllSolutions(
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

**Array<Solution>**

### Authorization

[oAuth2AuthCode](../README.md#oAuth2AuthCode)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | the solution details |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **findSolutionById**
> Solution findSolutionById()


### Example

```typescript
import {
    SolutionApi,
    Configuration
} from '@cosmotech/api-ts';

const configuration = new Configuration();
const apiInstance = new SolutionApi(configuration);

let organizationId: string; //the Organization identifier (default to undefined)
let solutionId: string; //the Solution identifier (default to undefined)

const { status, data } = await apiInstance.findSolutionById(
    organizationId,
    solutionId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **organizationId** | [**string**] | the Organization identifier | defaults to undefined|
| **solutionId** | [**string**] | the Solution identifier | defaults to undefined|


### Return type

**Solution**

### Authorization

[oAuth2AuthCode](../README.md#oAuth2AuthCode)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | the Solution details |  -  |
|**404** | the Solution specified is unknown or you don\&#39;t have access to it |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSolutionAccessControl**
> SolutionAccessControl getSolutionAccessControl()


### Example

```typescript
import {
    SolutionApi,
    Configuration
} from '@cosmotech/api-ts';

const configuration = new Configuration();
const apiInstance = new SolutionApi(configuration);

let organizationId: string; //the Organization identifier (default to undefined)
let solutionId: string; //the Solution identifier (default to undefined)
let identityId: string; //the User identifier (default to undefined)

const { status, data } = await apiInstance.getSolutionAccessControl(
    organizationId,
    solutionId,
    identityId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **organizationId** | [**string**] | the Organization identifier | defaults to undefined|
| **solutionId** | [**string**] | the Solution identifier | defaults to undefined|
| **identityId** | [**string**] | the User identifier | defaults to undefined|


### Return type

**SolutionAccessControl**

### Authorization

[oAuth2AuthCode](../README.md#oAuth2AuthCode)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | The Solution access |  -  |
|**404** | The Solution or user specified is unknown or you don\&#39;t have access to it |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSolutionSecurity**
> SolutionSecurity getSolutionSecurity()


### Example

```typescript
import {
    SolutionApi,
    Configuration
} from '@cosmotech/api-ts';

const configuration = new Configuration();
const apiInstance = new SolutionApi(configuration);

let organizationId: string; //the Organization identifier (default to undefined)
let solutionId: string; //the Solution identifier (default to undefined)

const { status, data } = await apiInstance.getSolutionSecurity(
    organizationId,
    solutionId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **organizationId** | [**string**] | the Organization identifier | defaults to undefined|
| **solutionId** | [**string**] | the Solution identifier | defaults to undefined|


### Return type

**SolutionSecurity**

### Authorization

[oAuth2AuthCode](../README.md#oAuth2AuthCode)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | The Solution security |  -  |
|**404** | the Solution specified is unknown or you don\&#39;t have access to it |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSolutionSecurityUsers**
> Array<string> getSolutionSecurityUsers()


### Example

```typescript
import {
    SolutionApi,
    Configuration
} from '@cosmotech/api-ts';

const configuration = new Configuration();
const apiInstance = new SolutionApi(configuration);

let organizationId: string; //the Organization identifier (default to undefined)
let solutionId: string; //the Solution identifier (default to undefined)

const { status, data } = await apiInstance.getSolutionSecurityUsers(
    organizationId,
    solutionId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **organizationId** | [**string**] | the Organization identifier | defaults to undefined|
| **solutionId** | [**string**] | the Solution identifier | defaults to undefined|


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
|**200** | The Solution security users list |  -  |
|**404** | the Solution or the User specified is unknown or you don\&#39;t have access to them |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **removeAllRunTemplates**
> removeAllRunTemplates()


### Example

```typescript
import {
    SolutionApi,
    Configuration
} from '@cosmotech/api-ts';

const configuration = new Configuration();
const apiInstance = new SolutionApi(configuration);

let organizationId: string; //the Organization identifier (default to undefined)
let solutionId: string; //the Solution identifier (default to undefined)

const { status, data } = await apiInstance.removeAllRunTemplates(
    organizationId,
    solutionId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **organizationId** | [**string**] | the Organization identifier | defaults to undefined|
| **solutionId** | [**string**] | the Solution identifier | defaults to undefined|


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
|**404** | the Solution specified is unknown or you don\&#39;t have access to it |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **removeAllSolutionParameterGroups**
> removeAllSolutionParameterGroups()


### Example

```typescript
import {
    SolutionApi,
    Configuration
} from '@cosmotech/api-ts';

const configuration = new Configuration();
const apiInstance = new SolutionApi(configuration);

let organizationId: string; //the Organization identifier (default to undefined)
let solutionId: string; //the Solution identifier (default to undefined)

const { status, data } = await apiInstance.removeAllSolutionParameterGroups(
    organizationId,
    solutionId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **organizationId** | [**string**] | the Organization identifier | defaults to undefined|
| **solutionId** | [**string**] | the Solution identifier | defaults to undefined|


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
|**404** | the Solution specified is unknown or you don\&#39;t have access to it |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **removeAllSolutionParameters**
> removeAllSolutionParameters()


### Example

```typescript
import {
    SolutionApi,
    Configuration
} from '@cosmotech/api-ts';

const configuration = new Configuration();
const apiInstance = new SolutionApi(configuration);

let organizationId: string; //the Organization identifier (default to undefined)
let solutionId: string; //the Solution identifier (default to undefined)

const { status, data } = await apiInstance.removeAllSolutionParameters(
    organizationId,
    solutionId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **organizationId** | [**string**] | the Organization identifier | defaults to undefined|
| **solutionId** | [**string**] | the Solution identifier | defaults to undefined|


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
|**404** | the Solution specified is unknown or you don\&#39;t have access to it |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **removeSolutionAccessControl**
> removeSolutionAccessControl()


### Example

```typescript
import {
    SolutionApi,
    Configuration
} from '@cosmotech/api-ts';

const configuration = new Configuration();
const apiInstance = new SolutionApi(configuration);

let organizationId: string; //the Organization identifier (default to undefined)
let solutionId: string; //the Solution identifier (default to undefined)
let identityId: string; //the User identifier (default to undefined)

const { status, data } = await apiInstance.removeSolutionAccessControl(
    organizationId,
    solutionId,
    identityId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **organizationId** | [**string**] | the Organization identifier | defaults to undefined|
| **solutionId** | [**string**] | the Solution identifier | defaults to undefined|
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
|**404** | The Solution or the user specified is unknown or you don\&#39;t have access to them |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **setSolutionDefaultSecurity**
> SolutionSecurity setSolutionDefaultSecurity(solutionRole)


### Example

```typescript
import {
    SolutionApi,
    Configuration,
    SolutionRole
} from '@cosmotech/api-ts';

const configuration = new Configuration();
const apiInstance = new SolutionApi(configuration);

let organizationId: string; //the Organization identifier (default to undefined)
let solutionId: string; //the Solution identifier (default to undefined)
let solutionRole: SolutionRole; //This change the solution default security. The default security is the role assigned to any person not on the Access Control List. If the default security is None, then nobody outside of the ACL can access the solution.

const { status, data } = await apiInstance.setSolutionDefaultSecurity(
    organizationId,
    solutionId,
    solutionRole
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **solutionRole** | **SolutionRole**| This change the solution default security. The default security is the role assigned to any person not on the Access Control List. If the default security is None, then nobody outside of the ACL can access the solution. | |
| **organizationId** | [**string**] | the Organization identifier | defaults to undefined|
| **solutionId** | [**string**] | the Solution identifier | defaults to undefined|


### Return type

**SolutionSecurity**

### Authorization

[oAuth2AuthCode](../README.md#oAuth2AuthCode)

### HTTP request headers

 - **Content-Type**: application/json, application/yaml
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**201** | The Solution default visibility |  -  |
|**404** | the Solution specified is unknown or you don\&#39;t have access to it |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateSolution**
> Solution updateSolution(solution)


### Example

```typescript
import {
    SolutionApi,
    Configuration,
    Solution
} from '@cosmotech/api-ts';

const configuration = new Configuration();
const apiInstance = new SolutionApi(configuration);

let organizationId: string; //the Organization identifier (default to undefined)
let solutionId: string; //the Solution identifier (default to undefined)
let solution: Solution; //the new Solution details. This endpoint can\'t be used to update security

const { status, data } = await apiInstance.updateSolution(
    organizationId,
    solutionId,
    solution
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **solution** | **Solution**| the new Solution details. This endpoint can\&#39;t be used to update security | |
| **organizationId** | [**string**] | the Organization identifier | defaults to undefined|
| **solutionId** | [**string**] | the Solution identifier | defaults to undefined|


### Return type

**Solution**

### Authorization

[oAuth2AuthCode](../README.md#oAuth2AuthCode)

### HTTP request headers

 - **Content-Type**: application/json, application/yaml
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | the solution details |  -  |
|**400** | Bad request |  -  |
|**404** | the Solution specified is unknown or you don\&#39;t have access to it |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateSolutionAccessControl**
> SolutionAccessControl updateSolutionAccessControl(solutionRole)


### Example

```typescript
import {
    SolutionApi,
    Configuration,
    SolutionRole
} from '@cosmotech/api-ts';

const configuration = new Configuration();
const apiInstance = new SolutionApi(configuration);

let organizationId: string; //the Organization identifier (default to undefined)
let solutionId: string; //the Solution identifier (default to undefined)
let identityId: string; //the User identifier (default to undefined)
let solutionRole: SolutionRole; //The new Solution Access Control

const { status, data } = await apiInstance.updateSolutionAccessControl(
    organizationId,
    solutionId,
    identityId,
    solutionRole
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **solutionRole** | **SolutionRole**| The new Solution Access Control | |
| **organizationId** | [**string**] | the Organization identifier | defaults to undefined|
| **solutionId** | [**string**] | the Solution identifier | defaults to undefined|
| **identityId** | [**string**] | the User identifier | defaults to undefined|


### Return type

**SolutionAccessControl**

### Authorization

[oAuth2AuthCode](../README.md#oAuth2AuthCode)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | The Solution access |  -  |
|**404** | The Solution specified is unknown or you don\&#39;t have access to it |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateSolutionRunTemplate**
> Array<RunTemplate> updateSolutionRunTemplate(runTemplate)


### Example

```typescript
import {
    SolutionApi,
    Configuration,
    RunTemplate
} from '@cosmotech/api-ts';

const configuration = new Configuration();
const apiInstance = new SolutionApi(configuration);

let organizationId: string; //the Organization identifier (default to undefined)
let solutionId: string; //the Solution identifier (default to undefined)
let runTemplateId: string; //the Run Template identifier (default to undefined)
let runTemplate: RunTemplate; //the Run Templates

const { status, data } = await apiInstance.updateSolutionRunTemplate(
    organizationId,
    solutionId,
    runTemplateId,
    runTemplate
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **runTemplate** | **RunTemplate**| the Run Templates | |
| **organizationId** | [**string**] | the Organization identifier | defaults to undefined|
| **solutionId** | [**string**] | the Solution identifier | defaults to undefined|
| **runTemplateId** | [**string**] | the Run Template identifier | defaults to undefined|


### Return type

**Array<RunTemplate>**

### Authorization

[oAuth2AuthCode](../README.md#oAuth2AuthCode)

### HTTP request headers

 - **Content-Type**: application/json, application/yaml
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | the Parameters |  -  |
|**400** | Bad request |  -  |
|**404** | the Solution or Run Template specified is unknown or you don\&#39;t have access to it |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

