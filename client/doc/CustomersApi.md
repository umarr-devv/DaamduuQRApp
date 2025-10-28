# daamduuqr_client.api.CustomersApi

## Load the API package
```dart
import 'package:daamduuqr_client/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**customerMe**](CustomersApi.md#customerme) | **GET** /api/customers/me | On Customer Me
[**customerSignIn**](CustomersApi.md#customersignin) | **POST** /api/customers/sign_in | On Customer Sign In
[**setCustomerPushToken**](CustomersApi.md#setcustomerpushtoken) | **PATCH** /api/customers/push_token | On Set Customer Push Token
[**updateCustomer**](CustomersApi.md#updatecustomer) | **PUT** /api/customers | On Update Customer


# **customerMe**
> CustomerScheme customerMe(jwtToken)

On Customer Me

### Example
```dart
import 'package:daamduuqr_client/api.dart';

final api = DaamduuqrClient().getCustomersApi();
final String jwtToken = jwtToken_example; // String | 

try {
    final response = api.customerMe(jwtToken);
    print(response);
} catch on DioException (e) {
    print('Exception when calling CustomersApi->customerMe: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **jwtToken** | **String**|  | 

### Return type

[**CustomerScheme**](CustomerScheme.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **customerSignIn**
> TokenScheme customerSignIn(createCustomerScheme)

On Customer Sign In

### Example
```dart
import 'package:daamduuqr_client/api.dart';

final api = DaamduuqrClient().getCustomersApi();
final CreateCustomerScheme createCustomerScheme = ; // CreateCustomerScheme | 

try {
    final response = api.customerSignIn(createCustomerScheme);
    print(response);
} catch on DioException (e) {
    print('Exception when calling CustomersApi->customerSignIn: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createCustomerScheme** | [**CreateCustomerScheme**](CreateCustomerScheme.md)|  | 

### Return type

[**TokenScheme**](TokenScheme.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **setCustomerPushToken**
> CustomerScheme setCustomerPushToken(jwtToken, body)

On Set Customer Push Token

### Example
```dart
import 'package:daamduuqr_client/api.dart';

final api = DaamduuqrClient().getCustomersApi();
final String jwtToken = jwtToken_example; // String | 
final String body = body_example; // String | 

try {
    final response = api.setCustomerPushToken(jwtToken, body);
    print(response);
} catch on DioException (e) {
    print('Exception when calling CustomersApi->setCustomerPushToken: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **jwtToken** | **String**|  | 
 **body** | **String**|  | 

### Return type

[**CustomerScheme**](CustomerScheme.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateCustomer**
> CustomerScheme updateCustomer(jwtToken, updateCustomerScheme)

On Update Customer

### Example
```dart
import 'package:daamduuqr_client/api.dart';

final api = DaamduuqrClient().getCustomersApi();
final String jwtToken = jwtToken_example; // String | 
final UpdateCustomerScheme updateCustomerScheme = ; // UpdateCustomerScheme | 

try {
    final response = api.updateCustomer(jwtToken, updateCustomerScheme);
    print(response);
} catch on DioException (e) {
    print('Exception when calling CustomersApi->updateCustomer: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **jwtToken** | **String**|  | 
 **updateCustomerScheme** | [**UpdateCustomerScheme**](UpdateCustomerScheme.md)|  | 

### Return type

[**CustomerScheme**](CustomerScheme.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

