# daamduuqr_client.api.MessagingApi

## Load the API package
```dart
import 'package:daamduuqr_client/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**onSendMessagesApiMessagingSendPost**](MessagingApi.md#onsendmessagesapimessagingsendpost) | **POST** /api/messaging/send | On Send Messages


# **onSendMessagesApiMessagingSendPost**
> MessagingScheme onSendMessagesApiMessagingSendPost(messagingScheme)

On Send Messages

### Example
```dart
import 'package:daamduuqr_client/api.dart';

final api = DaamduuqrClient().getMessagingApi();
final MessagingScheme messagingScheme = ; // MessagingScheme | 

try {
    final response = api.onSendMessagesApiMessagingSendPost(messagingScheme);
    print(response);
} catch on DioException (e) {
    print('Exception when calling MessagingApi->onSendMessagesApiMessagingSendPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **messagingScheme** | [**MessagingScheme**](MessagingScheme.md)|  | 

### Return type

[**MessagingScheme**](MessagingScheme.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

