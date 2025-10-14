# daamduuqr_client.api.RecommendationsApi

## Load the API package
```dart
import 'package:daamduuqr_client/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getRecommendationsEstablishments**](RecommendationsApi.md#getrecommendationsestablishments) | **GET** /api/recommendations/establishments | On Get Recommendations Establishments
[**getRecommendationsProducts**](RecommendationsApi.md#getrecommendationsproducts) | **GET** /api/recommendations/products | On Get Recommendations Products


# **getRecommendationsEstablishments**
> List<EstablishmentScheme> getRecommendationsEstablishments(establishmentType, latitude, longitude)

On Get Recommendations Establishments

### Example
```dart
import 'package:daamduuqr_client/api.dart';

final api = DaamduuqrClient().getRecommendationsApi();
final EstablishmentType establishmentType = ; // EstablishmentType | 
final num latitude = 8.14; // num | 
final num longitude = 8.14; // num | 

try {
    final response = api.getRecommendationsEstablishments(establishmentType, latitude, longitude);
    print(response);
} catch on DioException (e) {
    print('Exception when calling RecommendationsApi->getRecommendationsEstablishments: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **establishmentType** | [**EstablishmentType**](.md)|  | [optional] 
 **latitude** | **num**|  | [optional] 
 **longitude** | **num**|  | [optional] 

### Return type

[**List&lt;EstablishmentScheme&gt;**](EstablishmentScheme.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getRecommendationsProducts**
> List<ProductScheme> getRecommendationsProducts()

On Get Recommendations Products

### Example
```dart
import 'package:daamduuqr_client/api.dart';

final api = DaamduuqrClient().getRecommendationsApi();

try {
    final response = api.getRecommendationsProducts();
    print(response);
} catch on DioException (e) {
    print('Exception when calling RecommendationsApi->getRecommendationsProducts: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List&lt;ProductScheme&gt;**](ProductScheme.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

