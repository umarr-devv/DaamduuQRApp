# daamduuqr_client.api.FilesApi

## Load the API package
```dart
import 'package:daamduuqr_client/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createFile**](FilesApi.md#createfile) | **POST** /api/files | On Create File
[**getFile**](FilesApi.md#getfile) | **GET** /api/files/{file_id} | On Get File


# **createFile**
> FileScheme createFile(uploadFile)

On Create File

### Example
```dart
import 'package:daamduuqr_client/api.dart';

final api = DaamduuqrClient().getFilesApi();
final MultipartFile uploadFile = BINARY_DATA_HERE; // MultipartFile | 

try {
    final response = api.createFile(uploadFile);
    print(response);
} catch on DioException (e) {
    print('Exception when calling FilesApi->createFile: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uploadFile** | **MultipartFile**|  | 

### Return type

[**FileScheme**](FileScheme.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getFile**
> getFile(fileId)

On Get File

### Example
```dart
import 'package:daamduuqr_client/api.dart';

final api = DaamduuqrClient().getFilesApi();
final String fileId = fileId_example; // String | 

try {
    api.getFile(fileId);
} catch on DioException (e) {
    print('Exception when calling FilesApi->getFile: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fileId** | **String**|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

