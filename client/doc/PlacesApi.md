# daamduuqr_client.api.PlacesApi

## Load the API package
```dart
import 'package:daamduuqr_client/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createPlace**](PlacesApi.md#createplace) | **POST** /api/places | On Create Place
[**createPlaceGroup**](PlacesApi.md#createplacegroup) | **POST** /api/places/groups | On Create Place Group
[**createTypeType**](PlacesApi.md#createtypetype) | **POST** /api/places/types | On Create Place Type
[**getPlace**](PlacesApi.md#getplace) | **GET** /api/places/{place_id} | On Get Place
[**getPlaceGroup**](PlacesApi.md#getplacegroup) | **GET** /api/places/groups/{place_group_id} | On Get Place Group
[**getPlaceType**](PlacesApi.md#getplacetype) | **GET** /api/places/types/{place_type_id} | On Get Place Type
[**updatePlace**](PlacesApi.md#updateplace) | **PUT** /api/places/{place_id} | On Update Place
[**updatePlaceGroup**](PlacesApi.md#updateplacegroup) | **PUT** /api/places/groups/{place_group_id} | On Update Place Group
[**updatePlaceType**](PlacesApi.md#updateplacetype) | **PUT** /api/places/types/{place_type_id} | On Update Place Type


# **createPlace**
> PlaceScheme createPlace(createPlaceScheme)

On Create Place

### Example
```dart
import 'package:daamduuqr_client/api.dart';

final api = DaamduuqrClient().getPlacesApi();
final CreatePlaceScheme createPlaceScheme = ; // CreatePlaceScheme | 

try {
    final response = api.createPlace(createPlaceScheme);
    print(response);
} catch on DioException (e) {
    print('Exception when calling PlacesApi->createPlace: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createPlaceScheme** | [**CreatePlaceScheme**](CreatePlaceScheme.md)|  | 

### Return type

[**PlaceScheme**](PlaceScheme.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createPlaceGroup**
> PlaceGroupScheme createPlaceGroup(createPlaceGroupScheme)

On Create Place Group

### Example
```dart
import 'package:daamduuqr_client/api.dart';

final api = DaamduuqrClient().getPlacesApi();
final CreatePlaceGroupScheme createPlaceGroupScheme = ; // CreatePlaceGroupScheme | 

try {
    final response = api.createPlaceGroup(createPlaceGroupScheme);
    print(response);
} catch on DioException (e) {
    print('Exception when calling PlacesApi->createPlaceGroup: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createPlaceGroupScheme** | [**CreatePlaceGroupScheme**](CreatePlaceGroupScheme.md)|  | 

### Return type

[**PlaceGroupScheme**](PlaceGroupScheme.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createTypeType**
> PlaceTypeScheme createTypeType(createPlaceTypeScheme)

On Create Place Type

### Example
```dart
import 'package:daamduuqr_client/api.dart';

final api = DaamduuqrClient().getPlacesApi();
final CreatePlaceTypeScheme createPlaceTypeScheme = ; // CreatePlaceTypeScheme | 

try {
    final response = api.createTypeType(createPlaceTypeScheme);
    print(response);
} catch on DioException (e) {
    print('Exception when calling PlacesApi->createTypeType: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createPlaceTypeScheme** | [**CreatePlaceTypeScheme**](CreatePlaceTypeScheme.md)|  | 

### Return type

[**PlaceTypeScheme**](PlaceTypeScheme.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPlace**
> PlaceScheme getPlace(placeId)

On Get Place

### Example
```dart
import 'package:daamduuqr_client/api.dart';

final api = DaamduuqrClient().getPlacesApi();
final String placeId = placeId_example; // String | 

try {
    final response = api.getPlace(placeId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling PlacesApi->getPlace: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **placeId** | **String**|  | 

### Return type

[**PlaceScheme**](PlaceScheme.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPlaceGroup**
> PlaceGroupScheme getPlaceGroup(placeGroupId)

On Get Place Group

### Example
```dart
import 'package:daamduuqr_client/api.dart';

final api = DaamduuqrClient().getPlacesApi();
final String placeGroupId = placeGroupId_example; // String | 

try {
    final response = api.getPlaceGroup(placeGroupId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling PlacesApi->getPlaceGroup: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **placeGroupId** | **String**|  | 

### Return type

[**PlaceGroupScheme**](PlaceGroupScheme.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPlaceType**
> PlaceTypeScheme getPlaceType(placeTypeId)

On Get Place Type

### Example
```dart
import 'package:daamduuqr_client/api.dart';

final api = DaamduuqrClient().getPlacesApi();
final String placeTypeId = placeTypeId_example; // String | 

try {
    final response = api.getPlaceType(placeTypeId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling PlacesApi->getPlaceType: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **placeTypeId** | **String**|  | 

### Return type

[**PlaceTypeScheme**](PlaceTypeScheme.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updatePlace**
> PlaceScheme updatePlace(placeId, updatePlaceScheme)

On Update Place

### Example
```dart
import 'package:daamduuqr_client/api.dart';

final api = DaamduuqrClient().getPlacesApi();
final String placeId = placeId_example; // String | 
final UpdatePlaceScheme updatePlaceScheme = ; // UpdatePlaceScheme | 

try {
    final response = api.updatePlace(placeId, updatePlaceScheme);
    print(response);
} catch on DioException (e) {
    print('Exception when calling PlacesApi->updatePlace: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **placeId** | **String**|  | 
 **updatePlaceScheme** | [**UpdatePlaceScheme**](UpdatePlaceScheme.md)|  | 

### Return type

[**PlaceScheme**](PlaceScheme.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updatePlaceGroup**
> PlaceGroupScheme updatePlaceGroup(placeGroupId, updatePlaceGroupScheme)

On Update Place Group

### Example
```dart
import 'package:daamduuqr_client/api.dart';

final api = DaamduuqrClient().getPlacesApi();
final String placeGroupId = placeGroupId_example; // String | 
final UpdatePlaceGroupScheme updatePlaceGroupScheme = ; // UpdatePlaceGroupScheme | 

try {
    final response = api.updatePlaceGroup(placeGroupId, updatePlaceGroupScheme);
    print(response);
} catch on DioException (e) {
    print('Exception when calling PlacesApi->updatePlaceGroup: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **placeGroupId** | **String**|  | 
 **updatePlaceGroupScheme** | [**UpdatePlaceGroupScheme**](UpdatePlaceGroupScheme.md)|  | 

### Return type

[**PlaceGroupScheme**](PlaceGroupScheme.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updatePlaceType**
> PlaceTypeScheme updatePlaceType(placeTypeId, updatePlaceTypeScheme)

On Update Place Type

### Example
```dart
import 'package:daamduuqr_client/api.dart';

final api = DaamduuqrClient().getPlacesApi();
final String placeTypeId = placeTypeId_example; // String | 
final UpdatePlaceTypeScheme updatePlaceTypeScheme = ; // UpdatePlaceTypeScheme | 

try {
    final response = api.updatePlaceType(placeTypeId, updatePlaceTypeScheme);
    print(response);
} catch on DioException (e) {
    print('Exception when calling PlacesApi->updatePlaceType: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **placeTypeId** | **String**|  | 
 **updatePlaceTypeScheme** | [**UpdatePlaceTypeScheme**](UpdatePlaceTypeScheme.md)|  | 

### Return type

[**PlaceTypeScheme**](PlaceTypeScheme.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

