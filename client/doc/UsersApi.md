# daamduuqr_client.api.UsersApi

## Load the API package
```dart
import 'package:daamduuqr_client/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addUserImage**](UsersApi.md#adduserimage) | **PATCH** /api/users/image | On Add User Image
[**createUser**](UsersApi.md#createuser) | **POST** /api/users | On Create User
[**deleteUserImage**](UsersApi.md#deleteuserimage) | **DELETE** /api/users/image/{file_id} | On Delete User Image
[**getUser**](UsersApi.md#getuser) | **GET** /api/users | On Get User
[**loginUser**](UsersApi.md#loginuser) | **POST** /api/users/login | On Login User
[**updateUser**](UsersApi.md#updateuser) | **PUT** /api/users | On Update User


# **addUserImage**
> UserScheme addUserImage(jwtToken, file)

On Add User Image

### Example
```dart
import 'package:daamduuqr_client/api.dart';

final api = DaamduuqrClient().getUsersApi();
final String jwtToken = jwtToken_example; // String | 
final MultipartFile file = BINARY_DATA_HERE; // MultipartFile | 

try {
    final response = api.addUserImage(jwtToken, file);
    print(response);
} catch on DioException (e) {
    print('Exception when calling UsersApi->addUserImage: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **jwtToken** | **String**|  | 
 **file** | **MultipartFile**|  | 

### Return type

[**UserScheme**](UserScheme.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createUser**
> UserScheme createUser(createUserScheme)

On Create User

### Example
```dart
import 'package:daamduuqr_client/api.dart';

final api = DaamduuqrClient().getUsersApi();
final CreateUserScheme createUserScheme = ; // CreateUserScheme | 

try {
    final response = api.createUser(createUserScheme);
    print(response);
} catch on DioException (e) {
    print('Exception when calling UsersApi->createUser: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createUserScheme** | [**CreateUserScheme**](CreateUserScheme.md)|  | 

### Return type

[**UserScheme**](UserScheme.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteUserImage**
> UserScheme deleteUserImage(fileId, jwtToken)

On Delete User Image

### Example
```dart
import 'package:daamduuqr_client/api.dart';

final api = DaamduuqrClient().getUsersApi();
final String fileId = fileId_example; // String | 
final String jwtToken = jwtToken_example; // String | 

try {
    final response = api.deleteUserImage(fileId, jwtToken);
    print(response);
} catch on DioException (e) {
    print('Exception when calling UsersApi->deleteUserImage: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fileId** | **String**|  | 
 **jwtToken** | **String**|  | 

### Return type

[**UserScheme**](UserScheme.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUser**
> UserScheme getUser(jwtToken)

On Get User

### Example
```dart
import 'package:daamduuqr_client/api.dart';

final api = DaamduuqrClient().getUsersApi();
final String jwtToken = jwtToken_example; // String | 

try {
    final response = api.getUser(jwtToken);
    print(response);
} catch on DioException (e) {
    print('Exception when calling UsersApi->getUser: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **jwtToken** | **String**|  | 

### Return type

[**UserScheme**](UserScheme.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **loginUser**
> TokenScheme loginUser(loginUserScheme)

On Login User

### Example
```dart
import 'package:daamduuqr_client/api.dart';

final api = DaamduuqrClient().getUsersApi();
final LoginUserScheme loginUserScheme = ; // LoginUserScheme | 

try {
    final response = api.loginUser(loginUserScheme);
    print(response);
} catch on DioException (e) {
    print('Exception when calling UsersApi->loginUser: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **loginUserScheme** | [**LoginUserScheme**](LoginUserScheme.md)|  | 

### Return type

[**TokenScheme**](TokenScheme.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateUser**
> UserScheme updateUser(jwtToken, updateUserScheme)

On Update User

### Example
```dart
import 'package:daamduuqr_client/api.dart';

final api = DaamduuqrClient().getUsersApi();
final String jwtToken = jwtToken_example; // String | 
final UpdateUserScheme updateUserScheme = ; // UpdateUserScheme | 

try {
    final response = api.updateUser(jwtToken, updateUserScheme);
    print(response);
} catch on DioException (e) {
    print('Exception when calling UsersApi->updateUser: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **jwtToken** | **String**|  | 
 **updateUserScheme** | [**UpdateUserScheme**](UpdateUserScheme.md)|  | 

### Return type

[**UserScheme**](UserScheme.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

