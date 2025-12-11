# daamduuqr_client.api.StoriesApi

## Load the API package
```dart
import 'package:daamduuqr_client/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addStoryContent**](StoriesApi.md#addstorycontent) | **PATCH** /api/stories/{story_id}/content | On Add Story Content
[**addStoryEstablishments**](StoriesApi.md#addstoryestablishments) | **PATCH** /api/stories/{story_id}/establishments | On Add Story Establishments
[**addStoryImage**](StoriesApi.md#addstoryimage) | **PATCH** /api/stories/{story_id}/image | On Add Story Image
[**createStory**](StoriesApi.md#createstory) | **POST** /api/stories | On Create Story
[**deleteStoryEstablishments**](StoriesApi.md#deletestoryestablishments) | **DELETE** /api/stories/{story_id}/establishments | On Delete Story Establishments
[**getStoriesByEstablishment**](StoriesApi.md#getstoriesbyestablishment) | **GET** /api/stories/by_establishment/{establishment_id} | On Get Stories By Establishment
[**getStoriesByOrganization**](StoriesApi.md#getstoriesbyorganization) | **GET** /api/stories/by_organization/{organization_id} | On Get Stories By Organization
[**updateStory**](StoriesApi.md#updatestory) | **PUT** /api/stories/{story_id} | On Update Story


# **addStoryContent**
> StoryScheme addStoryContent(storyId, images)

On Add Story Content

### Example
```dart
import 'package:daamduuqr_client/api.dart';

final api = DaamduuqrClient().getStoriesApi();
final String storyId = storyId_example; // String | 
final List<MultipartFile> images = /path/to/file.txt; // List<MultipartFile> | 

try {
    final response = api.addStoryContent(storyId, images);
    print(response);
} catch on DioException (e) {
    print('Exception when calling StoriesApi->addStoryContent: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **storyId** | **String**|  | 
 **images** | [**List&lt;MultipartFile&gt;**](MultipartFile.md)|  | [optional] 

### Return type

[**StoryScheme**](StoryScheme.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **addStoryEstablishments**
> StoryScheme addStoryEstablishments(storyId, storyAddEstablishmentScheme)

On Add Story Establishments

### Example
```dart
import 'package:daamduuqr_client/api.dart';

final api = DaamduuqrClient().getStoriesApi();
final String storyId = storyId_example; // String | 
final StoryAddEstablishmentScheme storyAddEstablishmentScheme = ; // StoryAddEstablishmentScheme | 

try {
    final response = api.addStoryEstablishments(storyId, storyAddEstablishmentScheme);
    print(response);
} catch on DioException (e) {
    print('Exception when calling StoriesApi->addStoryEstablishments: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **storyId** | **String**|  | 
 **storyAddEstablishmentScheme** | [**StoryAddEstablishmentScheme**](StoryAddEstablishmentScheme.md)|  | 

### Return type

[**StoryScheme**](StoryScheme.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **addStoryImage**
> StoryScheme addStoryImage(storyId, file)

On Add Story Image

### Example
```dart
import 'package:daamduuqr_client/api.dart';

final api = DaamduuqrClient().getStoriesApi();
final String storyId = storyId_example; // String | 
final MultipartFile file = BINARY_DATA_HERE; // MultipartFile | 

try {
    final response = api.addStoryImage(storyId, file);
    print(response);
} catch on DioException (e) {
    print('Exception when calling StoriesApi->addStoryImage: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **storyId** | **String**|  | 
 **file** | **MultipartFile**|  | 

### Return type

[**StoryScheme**](StoryScheme.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createStory**
> StoryScheme createStory(createStoryScheme)

On Create Story

### Example
```dart
import 'package:daamduuqr_client/api.dart';

final api = DaamduuqrClient().getStoriesApi();
final CreateStoryScheme createStoryScheme = ; // CreateStoryScheme | 

try {
    final response = api.createStory(createStoryScheme);
    print(response);
} catch on DioException (e) {
    print('Exception when calling StoriesApi->createStory: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createStoryScheme** | [**CreateStoryScheme**](CreateStoryScheme.md)|  | 

### Return type

[**StoryScheme**](StoryScheme.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteStoryEstablishments**
> StoryScheme deleteStoryEstablishments(storyId, storyDeleteEstablishmentScheme)

On Delete Story Establishments

### Example
```dart
import 'package:daamduuqr_client/api.dart';

final api = DaamduuqrClient().getStoriesApi();
final String storyId = storyId_example; // String | 
final StoryDeleteEstablishmentScheme storyDeleteEstablishmentScheme = ; // StoryDeleteEstablishmentScheme | 

try {
    final response = api.deleteStoryEstablishments(storyId, storyDeleteEstablishmentScheme);
    print(response);
} catch on DioException (e) {
    print('Exception when calling StoriesApi->deleteStoryEstablishments: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **storyId** | **String**|  | 
 **storyDeleteEstablishmentScheme** | [**StoryDeleteEstablishmentScheme**](StoryDeleteEstablishmentScheme.md)|  | 

### Return type

[**StoryScheme**](StoryScheme.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getStoriesByEstablishment**
> List<StoryScheme> getStoriesByEstablishment(establishmentId)

On Get Stories By Establishment

### Example
```dart
import 'package:daamduuqr_client/api.dart';

final api = DaamduuqrClient().getStoriesApi();
final String establishmentId = establishmentId_example; // String | 

try {
    final response = api.getStoriesByEstablishment(establishmentId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling StoriesApi->getStoriesByEstablishment: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **establishmentId** | **String**|  | 

### Return type

[**List&lt;StoryScheme&gt;**](StoryScheme.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getStoriesByOrganization**
> List<StoryScheme> getStoriesByOrganization(organizationId)

On Get Stories By Organization

### Example
```dart
import 'package:daamduuqr_client/api.dart';

final api = DaamduuqrClient().getStoriesApi();
final String organizationId = organizationId_example; // String | 

try {
    final response = api.getStoriesByOrganization(organizationId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling StoriesApi->getStoriesByOrganization: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organizationId** | **String**|  | 

### Return type

[**List&lt;StoryScheme&gt;**](StoryScheme.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateStory**
> StoryScheme updateStory(storyId, updateStoryScheme)

On Update Story

### Example
```dart
import 'package:daamduuqr_client/api.dart';

final api = DaamduuqrClient().getStoriesApi();
final String storyId = storyId_example; // String | 
final UpdateStoryScheme updateStoryScheme = ; // UpdateStoryScheme | 

try {
    final response = api.updateStory(storyId, updateStoryScheme);
    print(response);
} catch on DioException (e) {
    print('Exception when calling StoriesApi->updateStory: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **storyId** | **String**|  | 
 **updateStoryScheme** | [**UpdateStoryScheme**](UpdateStoryScheme.md)|  | 

### Return type

[**StoryScheme**](StoryScheme.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

