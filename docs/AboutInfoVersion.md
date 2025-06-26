# AboutInfoVersion

API version details

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**full** | **string** | Full version representation | [default to undefined]
**release** | **string** | Release main version representation | [default to undefined]
**major** | **number** | Major version number | [default to undefined]
**minor** | **number** | Minor version number | [default to undefined]
**patch** | **number** | Patch version number | [default to undefined]
**label** | **string** | Label version, may be empty | [default to undefined]
**build** | **string** | Build VCS id | [default to undefined]

## Example

```typescript
import { AboutInfoVersion } from '@cosmotech/api-ts';

const instance: AboutInfoVersion = {
    full,
    release,
    major,
    minor,
    patch,
    label,
    build,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
