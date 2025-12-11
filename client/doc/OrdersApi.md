# daamduuqr_client.api.OrdersApi

## Load the API package
```dart
import 'package:daamduuqr_client/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createOrder**](OrdersApi.md#createorder) | **POST** /api/orders | On Create Order
[**getOrder**](OrdersApi.md#getorder) | **GET** /api/orders/{order_id} | On Get Order


# **createOrder**
> OrderScheme createOrder(createOrderScheme)

On Create Order

### Example
```dart
import 'package:daamduuqr_client/api.dart';

final api = DaamduuqrClient().getOrdersApi();
final CreateOrderScheme createOrderScheme = ; // CreateOrderScheme | 

try {
    final response = api.createOrder(createOrderScheme);
    print(response);
} catch on DioException (e) {
    print('Exception when calling OrdersApi->createOrder: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createOrderScheme** | [**CreateOrderScheme**](CreateOrderScheme.md)|  | 

### Return type

[**OrderScheme**](OrderScheme.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getOrder**
> OrderScheme getOrder(orderId)

On Get Order

### Example
```dart
import 'package:daamduuqr_client/api.dart';

final api = DaamduuqrClient().getOrdersApi();
final String orderId = orderId_example; // String | 

try {
    final response = api.getOrder(orderId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling OrdersApi->getOrder: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orderId** | **String**|  | 

### Return type

[**OrderScheme**](OrderScheme.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

