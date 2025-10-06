# daamduuqr_client.api.ContactsApi

## Load the API package
```dart
import 'package:daamduuqr_client/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createContact**](ContactsApi.md#createcontact) | **POST** /api/contacts | On Create Contact
[**getContact**](ContactsApi.md#getcontact) | **GET** /api/contacts/{contact_id} | On Get Contact
[**updateContact**](ContactsApi.md#updatecontact) | **PUT** /api/contacts/{contact_id} | On Update Contact


# **createContact**
> ContactScheme createContact(createContactScheme)

On Create Contact

### Example
```dart
import 'package:daamduuqr_client/api.dart';

final api = DaamduuqrClient().getContactsApi();
final CreateContactScheme createContactScheme = ; // CreateContactScheme | 

try {
    final response = api.createContact(createContactScheme);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ContactsApi->createContact: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createContactScheme** | [**CreateContactScheme**](CreateContactScheme.md)|  | 

### Return type

[**ContactScheme**](ContactScheme.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getContact**
> ContactScheme getContact(contactId)

On Get Contact

### Example
```dart
import 'package:daamduuqr_client/api.dart';

final api = DaamduuqrClient().getContactsApi();
final String contactId = contactId_example; // String | 

try {
    final response = api.getContact(contactId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ContactsApi->getContact: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contactId** | **String**|  | 

### Return type

[**ContactScheme**](ContactScheme.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateContact**
> ContactScheme updateContact(contactId, updateContactScheme)

On Update Contact

### Example
```dart
import 'package:daamduuqr_client/api.dart';

final api = DaamduuqrClient().getContactsApi();
final String contactId = contactId_example; // String | 
final UpdateContactScheme updateContactScheme = ; // UpdateContactScheme | 

try {
    final response = api.updateContact(contactId, updateContactScheme);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ContactsApi->updateContact: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contactId** | **String**|  | 
 **updateContactScheme** | [**UpdateContactScheme**](UpdateContactScheme.md)|  | 

### Return type

[**ContactScheme**](ContactScheme.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

