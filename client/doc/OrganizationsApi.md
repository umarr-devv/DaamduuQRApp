# daamduuqr_client.api.OrganizationsApi

## Load the API package
```dart
import 'package:daamduuqr_client/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createOrganization**](OrganizationsApi.md#createorganization) | **POST** /api/organizations | On Create Organization
[**getOrganization**](OrganizationsApi.md#getorganization) | **GET** /api/organizations/{organization_id} | On Get Organization
[**getOrganizationCategories**](OrganizationsApi.md#getorganizationcategories) | **GET** /api/organizations/{organization_id}/categories | On Get Organization Categories
[**getOrganizationEstablishments**](OrganizationsApi.md#getorganizationestablishments) | **GET** /api/organizations/{organization_id}/establishments | On Get Organization Establishments
[**getOrganizationMenus**](OrganizationsApi.md#getorganizationmenus) | **GET** /api/organizations/{organization_id}/menus | On Get Organization Menus
[**getOrganizationPlaceTypes**](OrganizationsApi.md#getorganizationplacetypes) | **GET** /api/organizations/{organization_id}/place_types | On Get Organization Place Types
[**updateOrganization**](OrganizationsApi.md#updateorganization) | **PUT** /api/organizations/{organization_id} | On Update Organization


# **createOrganization**
> OrganizationScheme createOrganization(createOrganizationScheme)

On Create Organization

### Example
```dart
import 'package:daamduuqr_client/api.dart';

final api = DaamduuqrClient().getOrganizationsApi();
final CreateOrganizationScheme createOrganizationScheme = ; // CreateOrganizationScheme | 

try {
    final response = api.createOrganization(createOrganizationScheme);
    print(response);
} catch on DioException (e) {
    print('Exception when calling OrganizationsApi->createOrganization: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createOrganizationScheme** | [**CreateOrganizationScheme**](CreateOrganizationScheme.md)|  | 

### Return type

[**OrganizationScheme**](OrganizationScheme.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getOrganization**
> OrganizationScheme getOrganization(organizationId)

On Get Organization

### Example
```dart
import 'package:daamduuqr_client/api.dart';

final api = DaamduuqrClient().getOrganizationsApi();
final String organizationId = organizationId_example; // String | 

try {
    final response = api.getOrganization(organizationId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling OrganizationsApi->getOrganization: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organizationId** | **String**|  | 

### Return type

[**OrganizationScheme**](OrganizationScheme.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getOrganizationCategories**
> List<CategoryScheme> getOrganizationCategories(organizationId)

On Get Organization Categories

### Example
```dart
import 'package:daamduuqr_client/api.dart';

final api = DaamduuqrClient().getOrganizationsApi();
final String organizationId = organizationId_example; // String | 

try {
    final response = api.getOrganizationCategories(organizationId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling OrganizationsApi->getOrganizationCategories: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organizationId** | **String**|  | 

### Return type

[**List&lt;CategoryScheme&gt;**](CategoryScheme.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getOrganizationEstablishments**
> List<EstablishmentScheme> getOrganizationEstablishments(organizationId)

On Get Organization Establishments

### Example
```dart
import 'package:daamduuqr_client/api.dart';

final api = DaamduuqrClient().getOrganizationsApi();
final String organizationId = organizationId_example; // String | 

try {
    final response = api.getOrganizationEstablishments(organizationId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling OrganizationsApi->getOrganizationEstablishments: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organizationId** | **String**|  | 

### Return type

[**List&lt;EstablishmentScheme&gt;**](EstablishmentScheme.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getOrganizationMenus**
> List<MenuScheme> getOrganizationMenus(organizationId)

On Get Organization Menus

### Example
```dart
import 'package:daamduuqr_client/api.dart';

final api = DaamduuqrClient().getOrganizationsApi();
final String organizationId = organizationId_example; // String | 

try {
    final response = api.getOrganizationMenus(organizationId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling OrganizationsApi->getOrganizationMenus: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organizationId** | **String**|  | 

### Return type

[**List&lt;MenuScheme&gt;**](MenuScheme.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getOrganizationPlaceTypes**
> List<PlaceTypeScheme> getOrganizationPlaceTypes(organizationId)

On Get Organization Place Types

### Example
```dart
import 'package:daamduuqr_client/api.dart';

final api = DaamduuqrClient().getOrganizationsApi();
final String organizationId = organizationId_example; // String | 

try {
    final response = api.getOrganizationPlaceTypes(organizationId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling OrganizationsApi->getOrganizationPlaceTypes: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organizationId** | **String**|  | 

### Return type

[**List&lt;PlaceTypeScheme&gt;**](PlaceTypeScheme.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateOrganization**
> OrganizationScheme updateOrganization(organizationId, updateOrganizationScheme)

On Update Organization

### Example
```dart
import 'package:daamduuqr_client/api.dart';

final api = DaamduuqrClient().getOrganizationsApi();
final String organizationId = organizationId_example; // String | 
final UpdateOrganizationScheme updateOrganizationScheme = ; // UpdateOrganizationScheme | 

try {
    final response = api.updateOrganization(organizationId, updateOrganizationScheme);
    print(response);
} catch on DioException (e) {
    print('Exception when calling OrganizationsApi->updateOrganization: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organizationId** | **String**|  | 
 **updateOrganizationScheme** | [**UpdateOrganizationScheme**](UpdateOrganizationScheme.md)|  | 

### Return type

[**OrganizationScheme**](OrganizationScheme.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

