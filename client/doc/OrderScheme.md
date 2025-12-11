# daamduuqr_client.model.OrderScheme

## Load the model package
```dart
import 'package:daamduuqr_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | 
**createAt** | [**DateTime**](DateTime.md) |  | 
**updateAt** | [**DateTime**](DateTime.md) |  | 
**number** | **String** |  | 
**sequence** | **int** |  | 
**establishmentId** | **String** |  | 
**placeId** | **String** |  | 
**customerId** | **String** |  | 
**type** | [**OrderType**](OrderType.md) |  | 
**userId** | **String** |  | 
**completeStatus** | [**OrderCompleteStatus**](OrderCompleteStatus.md) |  | 
**orderSum** | **num** |  | 
**placeSum** | **num** |  | 
**paidSum** | **num** |  | 
**note** | **String** |  | 
**seatedAt** | [**DateTime**](DateTime.md) |  | 
**completedAt** | [**DateTime**](DateTime.md) |  | 
**timeSpentHours** | **num** |  | 
**establishment** | [**EstablishmentScheme**](EstablishmentScheme.md) |  | 
**place** | [**PlaceScheme**](PlaceScheme.md) |  | 
**customer** | [**CustomerScheme**](CustomerScheme.md) |  | 
**user** | [**UserScheme**](UserScheme.md) |  | 
**items** | [**List&lt;OrderItemScheme&gt;**](OrderItemScheme.md) |  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


