# daamduuqr_client.api.CategoriesApi

## Load the API package
```dart
import 'package:daamduuqr_client/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addCategoryImage**](CategoriesApi.md#addcategoryimage) | **PATCH** /api/categories/{category_id}/image | On Add Category Image
[**createCategory**](CategoriesApi.md#createcategory) | **POST** /api/categories | On Create Categoiry
[**deleteCategoryImage**](CategoriesApi.md#deletecategoryimage) | **DELETE** /api/categories/{category_id}/image/{file_id} | On Delete Category Image
[**getCategoriesByEstablishment**](CategoriesApi.md#getcategoriesbyestablishment) | **GET** /api/categories/by_establishment/{establishment_id} | On Get Categories By Establishment
[**getCategory**](CategoriesApi.md#getcategory) | **GET** /api/categories/{category_id} | On Get Category
[**getCategoryProducts**](CategoriesApi.md#getcategoryproducts) | **GET** /api/categories/{category_id}/products | On Get Category Products
[**updateCategory**](CategoriesApi.md#updatecategory) | **PUT** /api/categories/{category_id} | On Update Category


# **addCategoryImage**
> CategoryScheme addCategoryImage(categoryId, file)

On Add Category Image

### Example
```dart
import 'package:daamduuqr_client/api.dart';

final api = DaamduuqrClient().getCategoriesApi();
final String categoryId = categoryId_example; // String | 
final MultipartFile file = BINARY_DATA_HERE; // MultipartFile | 

try {
    final response = api.addCategoryImage(categoryId, file);
    print(response);
} catch on DioException (e) {
    print('Exception when calling CategoriesApi->addCategoryImage: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **categoryId** | **String**|  | 
 **file** | **MultipartFile**|  | 

### Return type

[**CategoryScheme**](CategoryScheme.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createCategory**
> CategoryScheme createCategory(createCategoryScheme)

On Create Categoiry

### Example
```dart
import 'package:daamduuqr_client/api.dart';

final api = DaamduuqrClient().getCategoriesApi();
final CreateCategoryScheme createCategoryScheme = ; // CreateCategoryScheme | 

try {
    final response = api.createCategory(createCategoryScheme);
    print(response);
} catch on DioException (e) {
    print('Exception when calling CategoriesApi->createCategory: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createCategoryScheme** | [**CreateCategoryScheme**](CreateCategoryScheme.md)|  | 

### Return type

[**CategoryScheme**](CategoryScheme.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteCategoryImage**
> CategoryScheme deleteCategoryImage(categoryId, fileId)

On Delete Category Image

### Example
```dart
import 'package:daamduuqr_client/api.dart';

final api = DaamduuqrClient().getCategoriesApi();
final String categoryId = categoryId_example; // String | 
final String fileId = fileId_example; // String | 

try {
    final response = api.deleteCategoryImage(categoryId, fileId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling CategoriesApi->deleteCategoryImage: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **categoryId** | **String**|  | 
 **fileId** | **String**|  | 

### Return type

[**CategoryScheme**](CategoryScheme.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCategoriesByEstablishment**
> List<CategoryScheme> getCategoriesByEstablishment(establishmentId)

On Get Categories By Establishment

### Example
```dart
import 'package:daamduuqr_client/api.dart';

final api = DaamduuqrClient().getCategoriesApi();
final String establishmentId = establishmentId_example; // String | 

try {
    final response = api.getCategoriesByEstablishment(establishmentId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling CategoriesApi->getCategoriesByEstablishment: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **establishmentId** | **String**|  | 

### Return type

[**List&lt;CategoryScheme&gt;**](CategoryScheme.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCategory**
> CategoryScheme getCategory(categoryId)

On Get Category

### Example
```dart
import 'package:daamduuqr_client/api.dart';

final api = DaamduuqrClient().getCategoriesApi();
final String categoryId = categoryId_example; // String | 

try {
    final response = api.getCategory(categoryId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling CategoriesApi->getCategory: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **categoryId** | **String**|  | 

### Return type

[**CategoryScheme**](CategoryScheme.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCategoryProducts**
> List<ProductScheme> getCategoryProducts(categoryId)

On Get Category Products

### Example
```dart
import 'package:daamduuqr_client/api.dart';

final api = DaamduuqrClient().getCategoriesApi();
final String categoryId = categoryId_example; // String | 

try {
    final response = api.getCategoryProducts(categoryId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling CategoriesApi->getCategoryProducts: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **categoryId** | **String**|  | 

### Return type

[**List&lt;ProductScheme&gt;**](ProductScheme.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateCategory**
> CategoryScheme updateCategory(categoryId, updateCategoryScheme)

On Update Category

### Example
```dart
import 'package:daamduuqr_client/api.dart';

final api = DaamduuqrClient().getCategoriesApi();
final String categoryId = categoryId_example; // String | 
final UpdateCategoryScheme updateCategoryScheme = ; // UpdateCategoryScheme | 

try {
    final response = api.updateCategory(categoryId, updateCategoryScheme);
    print(response);
} catch on DioException (e) {
    print('Exception when calling CategoriesApi->updateCategory: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **categoryId** | **String**|  | 
 **updateCategoryScheme** | [**UpdateCategoryScheme**](UpdateCategoryScheme.md)|  | 

### Return type

[**CategoryScheme**](CategoryScheme.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

