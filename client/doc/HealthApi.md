# daamduuqr_client.api.HealthApi

## Load the API package
```dart
import 'package:daamduuqr_client/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**onHealthApiHealthGet**](HealthApi.md#onhealthapihealthget) | **GET** /api/health | On Health


# **onHealthApiHealthGet**
> HealthScheme onHealthApiHealthGet()

On Health

### Example
```dart
import 'package:daamduuqr_client/api.dart';

final api = DaamduuqrClient().getHealthApi();

try {
    final response = api.onHealthApiHealthGet();
    print(response);
} catch on DioException (e) {
    print('Exception when calling HealthApi->onHealthApiHealthGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**HealthScheme**](HealthScheme.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

