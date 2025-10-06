# daamduuqr_client.api.MenusApi

## Load the API package
```dart
import 'package:daamduuqr_client/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createMenu**](MenusApi.md#createmenu) | **POST** /api/menus | On Create Menu
[**deleteMenuProducts**](MenusApi.md#deletemenuproducts) | **DELETE** /api/menus/{menu_id}/products | On Delete Menu Products
[**getMenu**](MenusApi.md#getmenu) | **GET** /api/menus/{menu_id} | On Get Menu
[**getMenuProducts**](MenusApi.md#getmenuproducts) | **GET** /api/menus/{menu_id}/products | On Get Menu Products
[**menuAddProducts**](MenusApi.md#menuaddproducts) | **PATCH** /api/menus/{menu_id}/products | On Menu Add Products
[**updateMenu**](MenusApi.md#updatemenu) | **PUT** /api/menus/{menu_id} | On Update Menu


# **createMenu**
> MenuScheme createMenu(createMenuScheme)

On Create Menu

### Example
```dart
import 'package:daamduuqr_client/api.dart';

final api = DaamduuqrClient().getMenusApi();
final CreateMenuScheme createMenuScheme = ; // CreateMenuScheme | 

try {
    final response = api.createMenu(createMenuScheme);
    print(response);
} catch on DioException (e) {
    print('Exception when calling MenusApi->createMenu: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createMenuScheme** | [**CreateMenuScheme**](CreateMenuScheme.md)|  | 

### Return type

[**MenuScheme**](MenuScheme.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteMenuProducts**
> List<ProductScheme> deleteMenuProducts(menuId, menuAddProductScheme)

On Delete Menu Products

### Example
```dart
import 'package:daamduuqr_client/api.dart';

final api = DaamduuqrClient().getMenusApi();
final String menuId = menuId_example; // String | 
final MenuAddProductScheme menuAddProductScheme = ; // MenuAddProductScheme | 

try {
    final response = api.deleteMenuProducts(menuId, menuAddProductScheme);
    print(response);
} catch on DioException (e) {
    print('Exception when calling MenusApi->deleteMenuProducts: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **menuId** | **String**|  | 
 **menuAddProductScheme** | [**MenuAddProductScheme**](MenuAddProductScheme.md)|  | 

### Return type

[**List&lt;ProductScheme&gt;**](ProductScheme.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMenu**
> MenuScheme getMenu(menuId)

On Get Menu

### Example
```dart
import 'package:daamduuqr_client/api.dart';

final api = DaamduuqrClient().getMenusApi();
final String menuId = menuId_example; // String | 

try {
    final response = api.getMenu(menuId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling MenusApi->getMenu: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **menuId** | **String**|  | 

### Return type

[**MenuScheme**](MenuScheme.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMenuProducts**
> List<ProductScheme> getMenuProducts(menuId)

On Get Menu Products

### Example
```dart
import 'package:daamduuqr_client/api.dart';

final api = DaamduuqrClient().getMenusApi();
final String menuId = menuId_example; // String | 

try {
    final response = api.getMenuProducts(menuId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling MenusApi->getMenuProducts: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **menuId** | **String**|  | 

### Return type

[**List&lt;ProductScheme&gt;**](ProductScheme.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **menuAddProducts**
> List<ProductScheme> menuAddProducts(menuId, menuDeleteProductScheme)

On Menu Add Products

### Example
```dart
import 'package:daamduuqr_client/api.dart';

final api = DaamduuqrClient().getMenusApi();
final String menuId = menuId_example; // String | 
final MenuDeleteProductScheme menuDeleteProductScheme = ; // MenuDeleteProductScheme | 

try {
    final response = api.menuAddProducts(menuId, menuDeleteProductScheme);
    print(response);
} catch on DioException (e) {
    print('Exception when calling MenusApi->menuAddProducts: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **menuId** | **String**|  | 
 **menuDeleteProductScheme** | [**MenuDeleteProductScheme**](MenuDeleteProductScheme.md)|  | 

### Return type

[**List&lt;ProductScheme&gt;**](ProductScheme.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateMenu**
> MenuScheme updateMenu(menuId, updateMenuScheme)

On Update Menu

### Example
```dart
import 'package:daamduuqr_client/api.dart';

final api = DaamduuqrClient().getMenusApi();
final String menuId = menuId_example; // String | 
final UpdateMenuScheme updateMenuScheme = ; // UpdateMenuScheme | 

try {
    final response = api.updateMenu(menuId, updateMenuScheme);
    print(response);
} catch on DioException (e) {
    print('Exception when calling MenusApi->updateMenu: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **menuId** | **String**|  | 
 **updateMenuScheme** | [**UpdateMenuScheme**](UpdateMenuScheme.md)|  | 

### Return type

[**MenuScheme**](MenuScheme.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

