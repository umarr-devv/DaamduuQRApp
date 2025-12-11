# daamduuqr_client.api.ProductsApi

## Load the API package
```dart
import 'package:daamduuqr_client/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addProductImage**](ProductsApi.md#addproductimage) | **PATCH** /api/products/{product_id}/images/{file_id} | On Add Product Image
[**addProductPortion**](ProductsApi.md#addproductportion) | **PATCH** /api/products/{product_id}/portions | On Add Product Portion
[**createProduct**](ProductsApi.md#createproduct) | **POST** /api/products | On Create Product
[**deleteProductImage**](ProductsApi.md#deleteproductimage) | **DELETE** /api/products/{product_id}/images/{file_id} | On Delete Product Image
[**deleteProductPortion**](ProductsApi.md#deleteproductportion) | **DELETE** /api/products/{product_id}/portions/{portion_id} | On Delete Product Portion
[**getProduct**](ProductsApi.md#getproduct) | **GET** /api/products/{product_id} | On Get Product
[**updateProduct**](ProductsApi.md#updateproduct) | **PUT** /api/products/{product_id} | On Update Product
[**updateProductPortion**](ProductsApi.md#updateproductportion) | **PUT** /api/products/{product_id}/portions/{portion_id} | On Update Product Portion


# **addProductImage**
> ProductScheme addProductImage(productId, fileId)

On Add Product Image

### Example
```dart
import 'package:daamduuqr_client/api.dart';

final api = DaamduuqrClient().getProductsApi();
final String productId = productId_example; // String | 
final String fileId = fileId_example; // String | 

try {
    final response = api.addProductImage(productId, fileId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ProductsApi->addProductImage: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **productId** | **String**|  | 
 **fileId** | **String**|  | 

### Return type

[**ProductScheme**](ProductScheme.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **addProductPortion**
> ProductScheme addProductPortion(productId, createPortionScheme)

On Add Product Portion

### Example
```dart
import 'package:daamduuqr_client/api.dart';

final api = DaamduuqrClient().getProductsApi();
final String productId = productId_example; // String | 
final CreatePortionScheme createPortionScheme = ; // CreatePortionScheme | 

try {
    final response = api.addProductPortion(productId, createPortionScheme);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ProductsApi->addProductPortion: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **productId** | **String**|  | 
 **createPortionScheme** | [**CreatePortionScheme**](CreatePortionScheme.md)|  | 

### Return type

[**ProductScheme**](ProductScheme.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createProduct**
> ProductScheme createProduct(createProductScheme)

On Create Product

### Example
```dart
import 'package:daamduuqr_client/api.dart';

final api = DaamduuqrClient().getProductsApi();
final CreateProductScheme createProductScheme = ; // CreateProductScheme | 

try {
    final response = api.createProduct(createProductScheme);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ProductsApi->createProduct: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createProductScheme** | [**CreateProductScheme**](CreateProductScheme.md)|  | 

### Return type

[**ProductScheme**](ProductScheme.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteProductImage**
> ProductScheme deleteProductImage(productId, fileId)

On Delete Product Image

### Example
```dart
import 'package:daamduuqr_client/api.dart';

final api = DaamduuqrClient().getProductsApi();
final String productId = productId_example; // String | 
final String fileId = fileId_example; // String | 

try {
    final response = api.deleteProductImage(productId, fileId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ProductsApi->deleteProductImage: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **productId** | **String**|  | 
 **fileId** | **String**|  | 

### Return type

[**ProductScheme**](ProductScheme.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteProductPortion**
> ProductScheme deleteProductPortion(productId, portionId)

On Delete Product Portion

### Example
```dart
import 'package:daamduuqr_client/api.dart';

final api = DaamduuqrClient().getProductsApi();
final String productId = productId_example; // String | 
final String portionId = portionId_example; // String | 

try {
    final response = api.deleteProductPortion(productId, portionId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ProductsApi->deleteProductPortion: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **productId** | **String**|  | 
 **portionId** | **String**|  | 

### Return type

[**ProductScheme**](ProductScheme.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getProduct**
> DetailProductScheme getProduct(productId)

On Get Product

### Example
```dart
import 'package:daamduuqr_client/api.dart';

final api = DaamduuqrClient().getProductsApi();
final String productId = productId_example; // String | 

try {
    final response = api.getProduct(productId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ProductsApi->getProduct: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **productId** | **String**|  | 

### Return type

[**DetailProductScheme**](DetailProductScheme.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateProduct**
> ProductScheme updateProduct(productId, updateProductScheme)

On Update Product

### Example
```dart
import 'package:daamduuqr_client/api.dart';

final api = DaamduuqrClient().getProductsApi();
final String productId = productId_example; // String | 
final UpdateProductScheme updateProductScheme = ; // UpdateProductScheme | 

try {
    final response = api.updateProduct(productId, updateProductScheme);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ProductsApi->updateProduct: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **productId** | **String**|  | 
 **updateProductScheme** | [**UpdateProductScheme**](UpdateProductScheme.md)|  | 

### Return type

[**ProductScheme**](ProductScheme.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateProductPortion**
> ProductScheme updateProductPortion(productId, portionId, updatePortionScheme)

On Update Product Portion

### Example
```dart
import 'package:daamduuqr_client/api.dart';

final api = DaamduuqrClient().getProductsApi();
final String productId = productId_example; // String | 
final String portionId = portionId_example; // String | 
final UpdatePortionScheme updatePortionScheme = ; // UpdatePortionScheme | 

try {
    final response = api.updateProductPortion(productId, portionId, updatePortionScheme);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ProductsApi->updateProductPortion: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **productId** | **String**|  | 
 **portionId** | **String**|  | 
 **updatePortionScheme** | [**UpdatePortionScheme**](UpdatePortionScheme.md)|  | 

### Return type

[**ProductScheme**](ProductScheme.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

