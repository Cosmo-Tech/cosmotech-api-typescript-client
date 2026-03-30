# WorkspaceWebApp

a Workspace Web Application

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**url** | **string** | the Workspace Web Application URL | [default to undefined]
**iframes** | **{ [key: string]: any; }** | a map of iframeKey/iframeURL | [optional] [default to undefined]
**_options** | **{ [key: string]: any; }** | free form options for Web Application | [optional] [default to undefined]

## Example

```typescript
import { WorkspaceWebApp } from '@cosmotech/api-ts';

const instance: WorkspaceWebApp = {
    url,
    iframes,
    _options,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
