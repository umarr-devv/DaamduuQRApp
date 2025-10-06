# daamduuqr_client.api.DefaultApi

## Load the API package
```dart
import 'package:daamduuqr_client/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**onHomeHomeGet**](DefaultApi.md#onhomehomeget) | **GET** /home/ | On Home


# **onHomeHomeGet**
> String onHomeHomeGet()

On Home

### Example
```dart
import 'package:daamduuqr_client/api.dart';

final api = DaamduuqrClient().getDefaultApi();

try {
    final response = api.onHomeHomeGet();
    print(response);
} catch on DioException (e) {
    print('Exception when calling DefaultApi->onHomeHomeGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/html

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

