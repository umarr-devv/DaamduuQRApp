# daamduuqr_client.api.EstablishmentsApi

## Load the API package
```dart
import 'package:daamduuqr_client/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addEstablishmentContact**](EstablishmentsApi.md#addestablishmentcontact) | **PATCH** /api/establishments/{establishment_id}/contacts/{contact_id} | On Add Establishment Contact
[**addEstablishmentImages**](EstablishmentsApi.md#addestablishmentimages) | **PATCH** /api/establishments/{establishment_id}/images | On Add Establishment Images
[**createEstablishment**](EstablishmentsApi.md#createestablishment) | **POST** /api/establishments | On Create Establishment
[**deleteEstablishmentContact**](EstablishmentsApi.md#deleteestablishmentcontact) | **DELETE** /api/establishments/{establishment_id}/contacts/{contact_id} | On Delete Establishment Contact
[**deleteEstablishmentImage**](EstablishmentsApi.md#deleteestablishmentimage) | **DELETE** /api/establishments/{establishment_id}/images/{file_id} | On Delete Establishment Image
[**getEstablishment**](EstablishmentsApi.md#getestablishment) | **GET** /api/establishments/{establishment_id} | On Get Establishment
[**getEstablishmentPlaceGroups**](EstablishmentsApi.md#getestablishmentplacegroups) | **GET** /api/establishments/{establishment_id}/places/groups | On Get Establishment Place Groups
[**getEstablishmentPlaces**](EstablishmentsApi.md#getestablishmentplaces) | **GET** /api/establishments/{establishment_id}/places | On Get Establishment Places
[**getEstablishmentProducts**](EstablishmentsApi.md#getestablishmentproducts) | **GET** /api/establishments/{establishment_id}/products | On Get Establishment Menu
[**updateEstablishment**](EstablishmentsApi.md#updateestablishment) | **PUT** /api/establishments/{establishment_id} | On Update Establishment


# **addEstablishmentContact**
> EstablishmentScheme addEstablishmentContact(establishmentId, contactId)

On Add Establishment Contact

### Example
```dart
import 'package:daamduuqr_client/api.dart';

final api = DaamduuqrClient().getEstablishmentsApi();
final String establishmentId = establishmentId_example; // String | 
final String contactId = contactId_example; // String | 

try {
    final response = api.addEstablishmentContact(establishmentId, contactId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling EstablishmentsApi->addEstablishmentContact: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **establishmentId** | **String**|  | 
 **contactId** | **String**|  | 

### Return type

[**EstablishmentScheme**](EstablishmentScheme.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **addEstablishmentImages**
> EstablishmentScheme addEstablishmentImages(establishmentId, images)

On Add Establishment Images

### Example
```dart
import 'package:daamduuqr_client/api.dart';

final api = DaamduuqrClient().getEstablishmentsApi();
final String establishmentId = establishmentId_example; // String | 
final List<MultipartFile> images = /path/to/file.txt; // List<MultipartFile> | 

try {
    final response = api.addEstablishmentImages(establishmentId, images);
    print(response);
} catch on DioException (e) {
    print('Exception when calling EstablishmentsApi->addEstablishmentImages: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **establishmentId** | **String**|  | 
 **images** | [**List&lt;MultipartFile&gt;**](MultipartFile.md)|  | [optional] 

### Return type

[**EstablishmentScheme**](EstablishmentScheme.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createEstablishment**
> EstablishmentScheme createEstablishment(createEstablishmentScheme)

On Create Establishment

### Example
```dart
import 'package:daamduuqr_client/api.dart';

final api = DaamduuqrClient().getEstablishmentsApi();
final CreateEstablishmentScheme createEstablishmentScheme = ; // CreateEstablishmentScheme | 

try {
    final response = api.createEstablishment(createEstablishmentScheme);
    print(response);
} catch on DioException (e) {
    print('Exception when calling EstablishmentsApi->createEstablishment: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createEstablishmentScheme** | [**CreateEstablishmentScheme**](CreateEstablishmentScheme.md)|  | 

### Return type

[**EstablishmentScheme**](EstablishmentScheme.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteEstablishmentContact**
> EstablishmentScheme deleteEstablishmentContact(establishmentId, contactId)

On Delete Establishment Contact

### Example
```dart
import 'package:daamduuqr_client/api.dart';

final api = DaamduuqrClient().getEstablishmentsApi();
final String establishmentId = establishmentId_example; // String | 
final String contactId = contactId_example; // String | 

try {
    final response = api.deleteEstablishmentContact(establishmentId, contactId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling EstablishmentsApi->deleteEstablishmentContact: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **establishmentId** | **String**|  | 
 **contactId** | **String**|  | 

### Return type

[**EstablishmentScheme**](EstablishmentScheme.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteEstablishmentImage**
> EstablishmentScheme deleteEstablishmentImage(establishmentId, fileId)

On Delete Establishment Image

### Example
```dart
import 'package:daamduuqr_client/api.dart';

final api = DaamduuqrClient().getEstablishmentsApi();
final String establishmentId = establishmentId_example; // String | 
final String fileId = fileId_example; // String | 

try {
    final response = api.deleteEstablishmentImage(establishmentId, fileId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling EstablishmentsApi->deleteEstablishmentImage: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **establishmentId** | **String**|  | 
 **fileId** | **String**|  | 

### Return type

[**EstablishmentScheme**](EstablishmentScheme.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getEstablishment**
> EstablishmentScheme getEstablishment(establishmentId)

On Get Establishment

### Example
```dart
import 'package:daamduuqr_client/api.dart';

final api = DaamduuqrClient().getEstablishmentsApi();
final String establishmentId = establishmentId_example; // String | 

try {
    final response = api.getEstablishment(establishmentId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling EstablishmentsApi->getEstablishment: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **establishmentId** | **String**|  | 

### Return type

[**EstablishmentScheme**](EstablishmentScheme.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getEstablishmentPlaceGroups**
> List<PlaceGroupScheme> getEstablishmentPlaceGroups(establishmentId)

On Get Establishment Place Groups

### Example
```dart
import 'package:daamduuqr_client/api.dart';

final api = DaamduuqrClient().getEstablishmentsApi();
final String establishmentId = establishmentId_example; // String | 

try {
    final response = api.getEstablishmentPlaceGroups(establishmentId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling EstablishmentsApi->getEstablishmentPlaceGroups: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **establishmentId** | **String**|  | 

### Return type

[**List&lt;PlaceGroupScheme&gt;**](PlaceGroupScheme.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getEstablishmentPlaces**
> List<PlaceScheme> getEstablishmentPlaces(establishmentId)

On Get Establishment Places

### Example
```dart
import 'package:daamduuqr_client/api.dart';

final api = DaamduuqrClient().getEstablishmentsApi();
final String establishmentId = establishmentId_example; // String | 

try {
    final response = api.getEstablishmentPlaces(establishmentId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling EstablishmentsApi->getEstablishmentPlaces: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **establishmentId** | **String**|  | 

### Return type

[**List&lt;PlaceScheme&gt;**](PlaceScheme.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getEstablishmentProducts**
> List<ProductScheme> getEstablishmentProducts(establishmentId)

On Get Establishment Menu

### Example
```dart
import 'package:daamduuqr_client/api.dart';

final api = DaamduuqrClient().getEstablishmentsApi();
final String establishmentId = establishmentId_example; // String | 

try {
    final response = api.getEstablishmentProducts(establishmentId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling EstablishmentsApi->getEstablishmentProducts: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **establishmentId** | **String**|  | 

### Return type

[**List&lt;ProductScheme&gt;**](ProductScheme.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateEstablishment**
> EstablishmentScheme updateEstablishment(establishmentId, updateEstablishmentScheme)

On Update Establishment

### Example
```dart
import 'package:daamduuqr_client/api.dart';

final api = DaamduuqrClient().getEstablishmentsApi();
final String establishmentId = establishmentId_example; // String | 
final UpdateEstablishmentScheme updateEstablishmentScheme = ; // UpdateEstablishmentScheme | 

try {
    final response = api.updateEstablishment(establishmentId, updateEstablishmentScheme);
    print(response);
} catch on DioException (e) {
    print('Exception when calling EstablishmentsApi->updateEstablishment: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **establishmentId** | **String**|  | 
 **updateEstablishmentScheme** | [**UpdateEstablishmentScheme**](UpdateEstablishmentScheme.md)|  | 

### Return type

[**EstablishmentScheme**](EstablishmentScheme.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

