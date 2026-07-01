# SolutionApi

All URIs are relative to *http://localhost:8080*

|Method | HTTP request | Description|
|------------- | ------------- | -------------|
|[**createSolution**](#createsolution) | **POST** /organizations/{organization_id}/solutions | Create a new solution|
|[**createSolutionAccessControl**](#createsolutionaccesscontrol) | **POST** /organizations/{organization_id}/solutions/{solution_id}/security/access | Create solution access control|
|[**createSolutionParameter**](#createsolutionparameter) | **POST** /organizations/{organization_id}/solutions/{solution_id}/parameters | Create solution parameter for a solution|
|[**createSolutionParameterGroup**](#createsolutionparametergroup) | **POST** /organizations/{organization_id}/solutions/{solution_id}/parameterGroups | Create a solution parameter group|
|[**createSolutionRunTemplate**](#createsolutionruntemplate) | **POST** /organizations/{organization_id}/solutions/{solution_id}/runTemplates | Create a solution run template|
|[**deleteSolution**](#deletesolution) | **DELETE** /organizations/{organization_id}/solutions/{solution_id} | Delete a solution|
|[**deleteSolutionAccessControl**](#deletesolutionaccesscontrol) | **DELETE** /organizations/{organization_id}/solutions/{solution_id}/security/access/{identity_id} | Delete solution access control|
|[**deleteSolutionParameter**](#deletesolutionparameter) | **DELETE** /organizations/{organization_id}/solutions/{solution_id}/parameters/{parameter_id} | Delete specific parameter from the solution|
|[**deleteSolutionParameterGroup**](#deletesolutionparametergroup) | **DELETE** /organizations/{organization_id}/solutions/{solution_id}/parameterGroups/{parameter_group_id} | Delete a parameter group from the solution|
|[**deleteSolutionRunTemplate**](#deletesolutionruntemplate) | **DELETE** /organizations/{organization_id}/solutions/{solution_id}/runTemplates/{run_template_id} | Delete a specific run template|
|[**getRunTemplate**](#getruntemplate) | **GET** /organizations/{organization_id}/solutions/{solution_id}/runTemplates/{run_template_id} | Retrieve a solution run templates|
|[**getSolution**](#getsolution) | **GET** /organizations/{organization_id}/solutions/{solution_id} | Get the details of a solution|
|[**getSolutionAccessControl**](#getsolutionaccesscontrol) | **GET** /organizations/{organization_id}/solutions/{solution_id}/security/access/{identity_id} | Get solution access control|
|[**getSolutionParameter**](#getsolutionparameter) | **GET** /organizations/{organization_id}/solutions/{solution_id}/parameters/{parameter_id} | Get the details of a solution parameter|
|[**getSolutionParameterGroup**](#getsolutionparametergroup) | **GET** /organizations/{organization_id}/solutions/{solution_id}/parameterGroups/{parameter_group_id} | Get details of a solution parameter group|
|[**getSolutionSecurity**](#getsolutionsecurity) | **GET** /organizations/{organization_id}/solutions/{solution_id}/security | Get solution security information|
|[**listRunTemplates**](#listruntemplates) | **GET** /organizations/{organization_id}/solutions/{solution_id}/runTemplates | List all solution run templates|
|[**listSolutionParameterGroups**](#listsolutionparametergroups) | **GET** /organizations/{organization_id}/solutions/{solution_id}/parameterGroups | List all solution parameter groups|
|[**listSolutionParameters**](#listsolutionparameters) | **GET** /organizations/{organization_id}/solutions/{solution_id}/parameters | List all solution parameters|
|[**listSolutionSecurityUsers**](#listsolutionsecurityusers) | **GET** /organizations/{organization_id}/solutions/{solution_id}/security/users | List solution security users|
|[**listSolutions**](#listsolutions) | **GET** /organizations/{organization_id}/solutions | List all Solutions|
|[**updateSolution**](#updatesolution) | **PATCH** /organizations/{organization_id}/solutions/{solution_id} | Update a solution|
|[**updateSolutionAccessControl**](#updatesolutionaccesscontrol) | **PATCH** /organizations/{organization_id}/solutions/{solution_id}/security/access/{identity_id} | Update solution access control|
|[**updateSolutionDefaultSecurity**](#updatesolutiondefaultsecurity) | **PATCH** /organizations/{organization_id}/solutions/{solution_id}/security/default | Update solution default security|
|[**updateSolutionParameter**](#updatesolutionparameter) | **PATCH** /organizations/{organization_id}/solutions/{solution_id}/parameters/{parameter_id} | Update solution parameter|
|[**updateSolutionParameterGroup**](#updatesolutionparametergroup) | **PATCH** /organizations/{organization_id}/solutions/{solution_id}/parameterGroups/{parameter_group_id} | Update a solution parameter group|
|[**updateSolutionRunTemplate**](#updatesolutionruntemplate) | **PATCH** /organizations/{organization_id}/solutions/{solution_id}/runTemplates/{run_template_id} | Update a specific run template|

# **createSolution**
> Solution createSolution(solutionCreateRequest)

Create a new solution with optional run templates and parameter definitions.

### Example

```typescript
import {
    SolutionApi,
    Configuration,
    SolutionCreateRequest
} from '@cosmotech/api-ts';

const configuration = new Configuration();
const apiInstance = new SolutionApi(configuration);

let organizationId: string; //the Organization identifier (default to undefined)
let solutionCreateRequest: SolutionCreateRequest; //The Solution to create

const { status, data } = await apiInstance.createSolution(
    organizationId,
    solutionCreateRequest
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **solutionCreateRequest** | **SolutionCreateRequest**| The Solution to create | |
| **organizationId** | [**string**] | the Organization identifier | defaults to undefined|


### Return type

**Solution**

### Authorization

[oAuth2AuthCode](../README.md#oAuth2AuthCode)

### HTTP request headers

 - **Content-Type**: application/json, application/yaml
 - **Accept**: application/json, application/yaml


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**201** | Solution successfully created |  -  |
|**400** | Bad request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createSolutionAccessControl**
> SolutionAccessControl createSolutionAccessControl(solutionAccessControl)

Grant access to a solution for a user or group.

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
let solutionAccessControl: SolutionAccessControl; //Access control to create

const { status, data } = await apiInstance.createSolutionAccessControl(
    organizationId,
    solutionId,
    solutionAccessControl
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **solutionAccessControl** | **SolutionAccessControl**| Access control to create | |
| **organizationId** | [**string**] | the Organization identifier | defaults to undefined|
| **solutionId** | [**string**] | the Solution identifier | defaults to undefined|


### Return type

**SolutionAccessControl**

### Authorization

[oAuth2AuthCode](../README.md#oAuth2AuthCode)

### HTTP request headers

 - **Content-Type**: application/json, application/yaml
 - **Accept**: application/json, application/yaml


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**201** | Solution access control successfully created |  -  |
|**404** | Solution not found or insufficient access rights |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createSolutionParameter**
> RunTemplateParameter createSolutionParameter(runTemplateParameterCreateRequest)


### Example

```typescript
import {
    SolutionApi,
    Configuration,
    RunTemplateParameterCreateRequest
} from '@cosmotech/api-ts';

const configuration = new Configuration();
const apiInstance = new SolutionApi(configuration);

let organizationId: string; //the Organization identifier (default to undefined)
let solutionId: string; //the Solution identifier (default to undefined)
let runTemplateParameterCreateRequest: RunTemplateParameterCreateRequest; //Parameter to create

const { status, data } = await apiInstance.createSolutionParameter(
    organizationId,
    solutionId,
    runTemplateParameterCreateRequest
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **runTemplateParameterCreateRequest** | **RunTemplateParameterCreateRequest**| Parameter to create | |
| **organizationId** | [**string**] | the Organization identifier | defaults to undefined|
| **solutionId** | [**string**] | the Solution identifier | defaults to undefined|


### Return type

**RunTemplateParameter**

### Authorization

[oAuth2AuthCode](../README.md#oAuth2AuthCode)

### HTTP request headers

 - **Content-Type**: application/json, application/yaml
 - **Accept**: application/json, application/yaml


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Parameters successfully created |  -  |
|**400** | Bad request |  -  |
|**404** | Solution not found or insufficient access rights |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createSolutionParameterGroup**
> RunTemplateParameterGroup createSolutionParameterGroup(runTemplateParameterGroupCreateRequest)


### Example

```typescript
import {
    SolutionApi,
    Configuration,
    RunTemplateParameterGroupCreateRequest
} from '@cosmotech/api-ts';

const configuration = new Configuration();
const apiInstance = new SolutionApi(configuration);

let organizationId: string; //the Organization identifier (default to undefined)
let solutionId: string; //the Solution identifier (default to undefined)
let runTemplateParameterGroupCreateRequest: RunTemplateParameterGroupCreateRequest; //Parameter group to create

const { status, data } = await apiInstance.createSolutionParameterGroup(
    organizationId,
    solutionId,
    runTemplateParameterGroupCreateRequest
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **runTemplateParameterGroupCreateRequest** | **RunTemplateParameterGroupCreateRequest**| Parameter group to create | |
| **organizationId** | [**string**] | the Organization identifier | defaults to undefined|
| **solutionId** | [**string**] | the Solution identifier | defaults to undefined|


### Return type

**RunTemplateParameterGroup**

### Authorization

[oAuth2AuthCode](../README.md#oAuth2AuthCode)

### HTTP request headers

 - **Content-Type**: application/json, application/yaml
 - **Accept**: application/json, application/yaml


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**201** | Parameter group successfully created |  -  |
|**400** | Bad request - Invalid parameter group |  -  |
|**404** | Solution not found or insufficient access rights |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createSolutionRunTemplate**
> RunTemplate createSolutionRunTemplate(runTemplateCreateRequest)


### Example

```typescript
import {
    SolutionApi,
    Configuration,
    RunTemplateCreateRequest
} from '@cosmotech/api-ts';

const configuration = new Configuration();
const apiInstance = new SolutionApi(configuration);

let organizationId: string; //the Organization identifier (default to undefined)
let solutionId: string; //the Solution identifier (default to undefined)
let runTemplateCreateRequest: RunTemplateCreateRequest; //Run template to create

const { status, data } = await apiInstance.createSolutionRunTemplate(
    organizationId,
    solutionId,
    runTemplateCreateRequest
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **runTemplateCreateRequest** | **RunTemplateCreateRequest**| Run template to create | |
| **organizationId** | [**string**] | the Organization identifier | defaults to undefined|
| **solutionId** | [**string**] | the Solution identifier | defaults to undefined|


### Return type

**RunTemplate**

### Authorization

[oAuth2AuthCode](../README.md#oAuth2AuthCode)

### HTTP request headers

 - **Content-Type**: application/json, application/yaml
 - **Accept**: application/json, application/yaml


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**201** | Run template successfully created |  -  |
|**400** | Bad request - Invalid run template |  -  |
|**404** | Solution not found or insufficient access rights |  -  |

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
|**204** | Solution successfully deleted |  -  |
|**404** | Solution not found or insufficient access rights |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteSolutionAccessControl**
> deleteSolutionAccessControl()


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
let identityId: string; //The User identifier (default to undefined)

const { status, data } = await apiInstance.deleteSolutionAccessControl(
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
|**204** | Solution access control successfully deleted |  -  |
|**404** | Solution or user not found or insufficient access rights |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteSolutionParameter**
> deleteSolutionParameter()


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
let parameterId: string; //The solution parameter identifier (default to undefined)

const { status, data } = await apiInstance.deleteSolutionParameter(
    organizationId,
    solutionId,
    parameterId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **organizationId** | [**string**] | the Organization identifier | defaults to undefined|
| **solutionId** | [**string**] | the Solution identifier | defaults to undefined|
| **parameterId** | [**string**] | The solution parameter identifier | defaults to undefined|


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
|**204** | Parameter successfully deleted |  -  |
|**404** | Solution or parameter not found or insufficient access rights |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteSolutionParameterGroup**
> deleteSolutionParameterGroup()


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
let parameterGroupId: string; //The parameter group identifier (default to undefined)

const { status, data } = await apiInstance.deleteSolutionParameterGroup(
    organizationId,
    solutionId,
    parameterGroupId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **organizationId** | [**string**] | the Organization identifier | defaults to undefined|
| **solutionId** | [**string**] | the Solution identifier | defaults to undefined|
| **parameterGroupId** | [**string**] | The parameter group identifier | defaults to undefined|


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
|**204** | Parameter group successfully deleted |  -  |
|**404** | Solution or parameter group not found or insufficient access rights |  -  |

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
let runTemplateId: string; //The Run Template identifier (default to undefined)

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
| **runTemplateId** | [**string**] | The Run Template identifier | defaults to undefined|


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
|**204** | Run template successfully deleted |  -  |
|**404** | Solution or run template not found or insufficient access rights |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getRunTemplate**
> RunTemplate getRunTemplate()


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
let runTemplateId: string; //The Run Template identifier (default to undefined)

const { status, data } = await apiInstance.getRunTemplate(
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
| **runTemplateId** | [**string**] | The Run Template identifier | defaults to undefined|


### Return type

**RunTemplate**

### Authorization

[oAuth2AuthCode](../README.md#oAuth2AuthCode)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/yaml


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Run template successfully retrieved |  -  |
|**404** | Solution not found or insufficient access rights |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSolution**
> Solution getSolution()

Retrieve detailed information about a solution.

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

const { status, data } = await apiInstance.getSolution(
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
 - **Accept**: application/json, application/yaml


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Solution details successfully retrieved |  -  |
|**404** | Solution not found or insufficient access rights |  -  |

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
let identityId: string; //The User identifier (default to undefined)

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
| **identityId** | [**string**] | The User identifier | defaults to undefined|


### Return type

**SolutionAccessControl**

### Authorization

[oAuth2AuthCode](../README.md#oAuth2AuthCode)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/yaml


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Solution access control successfully retrieved |  -  |
|**404** | Solution or user not found or insufficient access rights |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSolutionParameter**
> RunTemplateParameter getSolutionParameter()


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
let parameterId: string; //The solution parameter identifier (default to undefined)

const { status, data } = await apiInstance.getSolutionParameter(
    organizationId,
    solutionId,
    parameterId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **organizationId** | [**string**] | the Organization identifier | defaults to undefined|
| **solutionId** | [**string**] | the Solution identifier | defaults to undefined|
| **parameterId** | [**string**] | The solution parameter identifier | defaults to undefined|


### Return type

**RunTemplateParameter**

### Authorization

[oAuth2AuthCode](../README.md#oAuth2AuthCode)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/yaml


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Parameters successfully retrieved |  -  |
|**400** | Bad Request |  -  |
|**404** | Solution or parameter not found or insufficient access rights |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSolutionParameterGroup**
> RunTemplateParameterGroup getSolutionParameterGroup()


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
let parameterGroupId: string; //The parameter group identifier (default to undefined)

const { status, data } = await apiInstance.getSolutionParameterGroup(
    organizationId,
    solutionId,
    parameterGroupId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **organizationId** | [**string**] | the Organization identifier | defaults to undefined|
| **solutionId** | [**string**] | the Solution identifier | defaults to undefined|
| **parameterGroupId** | [**string**] | The parameter group identifier | defaults to undefined|


### Return type

**RunTemplateParameterGroup**

### Authorization

[oAuth2AuthCode](../README.md#oAuth2AuthCode)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/yaml


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Parameter groups successfully retrieved |  -  |
|**404** | Solution or parameter group not found or insufficient access rights |  -  |

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
 - **Accept**: application/json, application/yaml


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Solution security information successfully retrieved |  -  |
|**404** | Solution not found or insufficient access rights |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listRunTemplates**
> Array<RunTemplate> listRunTemplates()


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

const { status, data } = await apiInstance.listRunTemplates(
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

**Array<RunTemplate>**

### Authorization

[oAuth2AuthCode](../README.md#oAuth2AuthCode)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/yaml


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Run templates successfully listed |  -  |
|**404** | Solution not found or insufficient access rights |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listSolutionParameterGroups**
> Array<RunTemplateParameterGroup> listSolutionParameterGroups()


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

const { status, data } = await apiInstance.listSolutionParameterGroups(
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

**Array<RunTemplateParameterGroup>**

### Authorization

[oAuth2AuthCode](../README.md#oAuth2AuthCode)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/yaml


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Parameter groups successfully listed |  -  |
|**404** | Solution not found or insufficient access rights |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listSolutionParameters**
> Array<RunTemplateParameter> listSolutionParameters()


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

const { status, data } = await apiInstance.listSolutionParameters(
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

**Array<RunTemplateParameter>**

### Authorization

[oAuth2AuthCode](../README.md#oAuth2AuthCode)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/yaml


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Parameters successfully retrieved |  -  |
|**400** | Bad Request |  -  |
|**404** | Solution not found or insufficient access rights |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listSolutionSecurityUsers**
> Array<string> listSolutionSecurityUsers()


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

const { status, data } = await apiInstance.listSolutionSecurityUsers(
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
 - **Accept**: application/json, application/yaml


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Solution security users list successfully retrieved |  -  |
|**404** | Solution not found or insufficient access rights |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listSolutions**
> Array<Solution> listSolutions()

Retrieve a paginated list of all solutions in an organization that the user has permission to view.

### Example

```typescript
import {
    SolutionApi,
    Configuration
} from '@cosmotech/api-ts';

const configuration = new Configuration();
const apiInstance = new SolutionApi(configuration);

let organizationId: string; //the Organization identifier (default to undefined)
let page: number; //Page number to query (first page is at index 0) (optional) (default to undefined)
let size: number; //Amount of result by page (optional) (default to undefined)

const { status, data } = await apiInstance.listSolutions(
    organizationId,
    page,
    size
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **organizationId** | [**string**] | the Organization identifier | defaults to undefined|
| **page** | [**number**] | Page number to query (first page is at index 0) | (optional) defaults to undefined|
| **size** | [**number**] | Amount of result by page | (optional) defaults to undefined|


### Return type

**Array<Solution>**

### Authorization

[oAuth2AuthCode](../README.md#oAuth2AuthCode)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/yaml


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | List of solutions successfully retrieved |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateSolution**
> Solution updateSolution(solutionUpdateRequest)


### Example

```typescript
import {
    SolutionApi,
    Configuration,
    SolutionUpdateRequest
} from '@cosmotech/api-ts';

const configuration = new Configuration();
const apiInstance = new SolutionApi(configuration);

let organizationId: string; //the Organization identifier (default to undefined)
let solutionId: string; //the Solution identifier (default to undefined)
let solutionUpdateRequest: SolutionUpdateRequest; //The new Solution details. This endpoint can\'t be used to update security

const { status, data } = await apiInstance.updateSolution(
    organizationId,
    solutionId,
    solutionUpdateRequest
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **solutionUpdateRequest** | **SolutionUpdateRequest**| The new Solution details. This endpoint can\&#39;t be used to update security | |
| **organizationId** | [**string**] | the Organization identifier | defaults to undefined|
| **solutionId** | [**string**] | the Solution identifier | defaults to undefined|


### Return type

**Solution**

### Authorization

[oAuth2AuthCode](../README.md#oAuth2AuthCode)

### HTTP request headers

 - **Content-Type**: application/json, application/yaml
 - **Accept**: application/json, application/yaml


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Solution successfully updated |  -  |
|**400** | Bad request - Invalid update parameters |  -  |
|**404** | Solution not found or insufficient access rights |  -  |

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
let identityId: string; //The User identifier (default to undefined)
let solutionRole: SolutionRole; //Access control updates

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
| **solutionRole** | **SolutionRole**| Access control updates | |
| **organizationId** | [**string**] | the Organization identifier | defaults to undefined|
| **solutionId** | [**string**] | the Solution identifier | defaults to undefined|
| **identityId** | [**string**] | The User identifier | defaults to undefined|


### Return type

**SolutionAccessControl**

### Authorization

[oAuth2AuthCode](../README.md#oAuth2AuthCode)

### HTTP request headers

 - **Content-Type**: application/json, application/yaml
 - **Accept**: application/json, application/yaml


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Solution access control successfully updated |  -  |
|**404** | Solution not found or insufficient access rights |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateSolutionDefaultSecurity**
> SolutionSecurity updateSolutionDefaultSecurity(solutionRole)


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
let solutionRole: SolutionRole; //This changes the solution default security. The default security is the role assigned to any person not on the Access Control List. If the default security is None, then nobody outside of the ACL can access the solution.

const { status, data } = await apiInstance.updateSolutionDefaultSecurity(
    organizationId,
    solutionId,
    solutionRole
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **solutionRole** | **SolutionRole**| This changes the solution default security. The default security is the role assigned to any person not on the Access Control List. If the default security is None, then nobody outside of the ACL can access the solution. | |
| **organizationId** | [**string**] | the Organization identifier | defaults to undefined|
| **solutionId** | [**string**] | the Solution identifier | defaults to undefined|


### Return type

**SolutionSecurity**

### Authorization

[oAuth2AuthCode](../README.md#oAuth2AuthCode)

### HTTP request headers

 - **Content-Type**: application/json, application/yaml
 - **Accept**: application/json, application/yaml


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Solution default security successfully updated |  -  |
|**404** | Solution not found or insufficient access rights |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateSolutionParameter**
> RunTemplateParameter updateSolutionParameter(runTemplateParameterUpdateRequest)


### Example

```typescript
import {
    SolutionApi,
    Configuration,
    RunTemplateParameterUpdateRequest
} from '@cosmotech/api-ts';

const configuration = new Configuration();
const apiInstance = new SolutionApi(configuration);

let organizationId: string; //the Organization identifier (default to undefined)
let solutionId: string; //the Solution identifier (default to undefined)
let parameterId: string; //The solution parameter identifier (default to undefined)
let runTemplateParameterUpdateRequest: RunTemplateParameterUpdateRequest; //Parameter to update

const { status, data } = await apiInstance.updateSolutionParameter(
    organizationId,
    solutionId,
    parameterId,
    runTemplateParameterUpdateRequest
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **runTemplateParameterUpdateRequest** | **RunTemplateParameterUpdateRequest**| Parameter to update | |
| **organizationId** | [**string**] | the Organization identifier | defaults to undefined|
| **solutionId** | [**string**] | the Solution identifier | defaults to undefined|
| **parameterId** | [**string**] | The solution parameter identifier | defaults to undefined|


### Return type

**RunTemplateParameter**

### Authorization

[oAuth2AuthCode](../README.md#oAuth2AuthCode)

### HTTP request headers

 - **Content-Type**: application/json, application/yaml
 - **Accept**: application/json, application/yaml


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**201** | Parameters successfully updated |  -  |
|**400** | Bad request |  -  |
|**404** | Solution or parameter not found or insufficient access rights |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateSolutionParameterGroup**
> RunTemplateParameterGroup updateSolutionParameterGroup(runTemplateParameterGroupUpdateRequest)


### Example

```typescript
import {
    SolutionApi,
    Configuration,
    RunTemplateParameterGroupUpdateRequest
} from '@cosmotech/api-ts';

const configuration = new Configuration();
const apiInstance = new SolutionApi(configuration);

let organizationId: string; //the Organization identifier (default to undefined)
let solutionId: string; //the Solution identifier (default to undefined)
let parameterGroupId: string; //The parameter group identifier (default to undefined)
let runTemplateParameterGroupUpdateRequest: RunTemplateParameterGroupUpdateRequest; //Parameter groups to update

const { status, data } = await apiInstance.updateSolutionParameterGroup(
    organizationId,
    solutionId,
    parameterGroupId,
    runTemplateParameterGroupUpdateRequest
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **runTemplateParameterGroupUpdateRequest** | **RunTemplateParameterGroupUpdateRequest**| Parameter groups to update | |
| **organizationId** | [**string**] | the Organization identifier | defaults to undefined|
| **solutionId** | [**string**] | the Solution identifier | defaults to undefined|
| **parameterGroupId** | [**string**] | The parameter group identifier | defaults to undefined|


### Return type

**RunTemplateParameterGroup**

### Authorization

[oAuth2AuthCode](../README.md#oAuth2AuthCode)

### HTTP request headers

 - **Content-Type**: application/json, application/yaml
 - **Accept**: application/json, application/yaml


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Parameter groups successfully updated |  -  |
|**400** | Bad request - Invalid parameter group |  -  |
|**404** | Solution or parameter group not found or insufficient access rights |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateSolutionRunTemplate**
> RunTemplate updateSolutionRunTemplate(runTemplateUpdateRequest)


### Example

```typescript
import {
    SolutionApi,
    Configuration,
    RunTemplateUpdateRequest
} from '@cosmotech/api-ts';

const configuration = new Configuration();
const apiInstance = new SolutionApi(configuration);

let organizationId: string; //the Organization identifier (default to undefined)
let solutionId: string; //the Solution identifier (default to undefined)
let runTemplateId: string; //The Run Template identifier (default to undefined)
let runTemplateUpdateRequest: RunTemplateUpdateRequest; //Run template updates

const { status, data } = await apiInstance.updateSolutionRunTemplate(
    organizationId,
    solutionId,
    runTemplateId,
    runTemplateUpdateRequest
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **runTemplateUpdateRequest** | **RunTemplateUpdateRequest**| Run template updates | |
| **organizationId** | [**string**] | the Organization identifier | defaults to undefined|
| **solutionId** | [**string**] | the Solution identifier | defaults to undefined|
| **runTemplateId** | [**string**] | The Run Template identifier | defaults to undefined|


### Return type

**RunTemplate**

### Authorization

[oAuth2AuthCode](../README.md#oAuth2AuthCode)

### HTTP request headers

 - **Content-Type**: application/json, application/yaml
 - **Accept**: application/json, application/yaml


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Run template successfully updated |  -  |
|**400** | Bad request - Invalid run template updates |  -  |
|**404** | Solution or run template not found or insufficient access rights |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

