# daamduuqr_client.api.SearchApi

## Load the API package
```dart
import 'package:daamduuqr_client/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**search**](SearchApi.md#search) | **GET** /api/search | On Search
[**searchByEstablishment**](SearchApi.md#searchbyestablishment) | **GET** /api/search/by_establishment | On Search By Establishment


# **search**
> SearchResultScheme search(query)

On Search

### Example
```dart
import 'package:daamduuqr_client/api.dart';

final api = DaamduuqrClient().getSearchApi();
final String query = query_example; // String | 

try {
    final response = api.search(query);
    print(response);
} catch on DioException (e) {
    print('Exception when calling SearchApi->search: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **String**|  | 

### Return type

[**SearchResultScheme**](SearchResultScheme.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchByEstablishment**
> SearchResultScheme searchByEstablishment(query, establishmentId)

On Search By Establishment

### Example
```dart
import 'package:daamduuqr_client/api.dart';

final api = DaamduuqrClient().getSearchApi();
final String query = query_example; // String | 
final String establishmentId = establishmentId_example; // String | 

try {
    final response = api.searchByEstablishment(query, establishmentId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling SearchApi->searchByEstablishment: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **String**|  | 
 **establishmentId** | **String**|  | 

### Return type

[**SearchResultScheme**](SearchResultScheme.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

