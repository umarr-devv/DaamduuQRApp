# daamduuqr_client.api.CustomersApi

## Load the API package
```dart
import 'package:daamduuqr_client/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createCustomer**](CustomersApi.md#createcustomer) | **POST** /api/customers | On Create Customer


# **createCustomer**
> CustomerScheme createCustomer(createCustomerScheme)

On Create Customer

### Example
```dart
import 'package:daamduuqr_client/api.dart';

final api = DaamduuqrClient().getCustomersApi();
final CreateCustomerScheme createCustomerScheme = ; // CreateCustomerScheme | 

try {
    final response = api.createCustomer(createCustomerScheme);
    print(response);
} catch on DioException (e) {
    print('Exception when calling CustomersApi->createCustomer: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createCustomerScheme** | [**CreateCustomerScheme**](CreateCustomerScheme.md)|  | 

### Return type

[**CustomerScheme**](CustomerScheme.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

