import 'package:daamduuqr_client/src/model/category_scheme.dart';
import 'package:daamduuqr_client/src/model/contact_scheme.dart';
import 'package:daamduuqr_client/src/model/create_category_scheme.dart';
import 'package:daamduuqr_client/src/model/create_contact_scheme.dart';
import 'package:daamduuqr_client/src/model/create_customer_scheme.dart';
import 'package:daamduuqr_client/src/model/create_establishment_scheme.dart';
import 'package:daamduuqr_client/src/model/create_menu_scheme.dart';
import 'package:daamduuqr_client/src/model/create_order_item_scheme.dart';
import 'package:daamduuqr_client/src/model/create_order_scheme.dart';
import 'package:daamduuqr_client/src/model/create_organization_scheme.dart';
import 'package:daamduuqr_client/src/model/create_place_group_scheme.dart';
import 'package:daamduuqr_client/src/model/create_place_scheme.dart';
import 'package:daamduuqr_client/src/model/create_place_type_scheme.dart';
import 'package:daamduuqr_client/src/model/create_portion_scheme.dart';
import 'package:daamduuqr_client/src/model/create_product_scheme.dart';
import 'package:daamduuqr_client/src/model/create_story_scheme.dart';
import 'package:daamduuqr_client/src/model/create_user_scheme.dart';
import 'package:daamduuqr_client/src/model/customer_scheme.dart';
import 'package:daamduuqr_client/src/model/detail_product_scheme.dart';
import 'package:daamduuqr_client/src/model/establishment_scheme.dart';
import 'package:daamduuqr_client/src/model/file_scheme.dart';
import 'package:daamduuqr_client/src/model/http_validation_error.dart';
import 'package:daamduuqr_client/src/model/health_scheme.dart';
import 'package:daamduuqr_client/src/model/login_user_scheme.dart';
import 'package:daamduuqr_client/src/model/menu_add_product_scheme.dart';
import 'package:daamduuqr_client/src/model/menu_delete_product_scheme.dart';
import 'package:daamduuqr_client/src/model/menu_scheme.dart';
import 'package:daamduuqr_client/src/model/messaging_scheme.dart';
import 'package:daamduuqr_client/src/model/order_item_scheme.dart';
import 'package:daamduuqr_client/src/model/order_scheme.dart';
import 'package:daamduuqr_client/src/model/organization_scheme.dart';
import 'package:daamduuqr_client/src/model/place_group_scheme.dart';
import 'package:daamduuqr_client/src/model/place_scheme.dart';
import 'package:daamduuqr_client/src/model/place_type_scheme.dart';
import 'package:daamduuqr_client/src/model/portion_scheme.dart';
import 'package:daamduuqr_client/src/model/product_scheme.dart';
import 'package:daamduuqr_client/src/model/search_result_scheme.dart';
import 'package:daamduuqr_client/src/model/story_add_establishment_scheme.dart';
import 'package:daamduuqr_client/src/model/story_delete_establishment_scheme.dart';
import 'package:daamduuqr_client/src/model/story_scheme.dart';
import 'package:daamduuqr_client/src/model/token_scheme.dart';
import 'package:daamduuqr_client/src/model/update_category_scheme.dart';
import 'package:daamduuqr_client/src/model/update_contact_scheme.dart';
import 'package:daamduuqr_client/src/model/update_customer_scheme.dart';
import 'package:daamduuqr_client/src/model/update_establishment_scheme.dart';
import 'package:daamduuqr_client/src/model/update_menu_scheme.dart';
import 'package:daamduuqr_client/src/model/update_organization_scheme.dart';
import 'package:daamduuqr_client/src/model/update_place_group_scheme.dart';
import 'package:daamduuqr_client/src/model/update_place_scheme.dart';
import 'package:daamduuqr_client/src/model/update_place_type_scheme.dart';
import 'package:daamduuqr_client/src/model/update_portion_scheme.dart';
import 'package:daamduuqr_client/src/model/update_product_scheme.dart';
import 'package:daamduuqr_client/src/model/update_story_scheme.dart';
import 'package:daamduuqr_client/src/model/update_user_scheme.dart';
import 'package:daamduuqr_client/src/model/user_scheme.dart';
import 'package:daamduuqr_client/src/model/validation_error.dart';
import 'package:daamduuqr_client/src/model/validation_error_loc_inner.dart';

final _regList = RegExp(r'^List<(.*)>$');
final _regSet = RegExp(r'^Set<(.*)>$');
final _regMap = RegExp(r'^Map<String,(.*)>$');

ReturnType deserialize<ReturnType, BaseType>(
  dynamic value,
  String targetType, {
  bool growable = true,
}) {
  switch (targetType) {
    case 'String':
      return '$value' as ReturnType;
    case 'int':
      return (value is int ? value : int.parse('$value')) as ReturnType;
    case 'bool':
      if (value is bool) {
        return value as ReturnType;
      }
      final valueString = '$value'.toLowerCase();
      return (valueString == 'true' || valueString == '1') as ReturnType;
    case 'double':
      return (value is double ? value : double.parse('$value')) as ReturnType;
    case 'CategoryScheme':
      return CategoryScheme.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case 'ContactScheme':
      return ContactScheme.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case 'ContactType':
    case 'CreateCategoryScheme':
      return CreateCategoryScheme.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case 'CreateContactScheme':
      return CreateContactScheme.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case 'CreateCustomerScheme':
      return CreateCustomerScheme.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case 'CreateEstablishmentScheme':
      return CreateEstablishmentScheme.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case 'CreateMenuScheme':
      return CreateMenuScheme.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case 'CreateOrderItemScheme':
      return CreateOrderItemScheme.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case 'CreateOrderScheme':
      return CreateOrderScheme.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case 'CreateOrganizationScheme':
      return CreateOrganizationScheme.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case 'CreatePlaceGroupScheme':
      return CreatePlaceGroupScheme.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case 'CreatePlaceScheme':
      return CreatePlaceScheme.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case 'CreatePlaceTypeScheme':
      return CreatePlaceTypeScheme.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case 'CreatePortionScheme':
      return CreatePortionScheme.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case 'CreateProductScheme':
      return CreateProductScheme.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case 'CreateStoryScheme':
      return CreateStoryScheme.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case 'CreateUserScheme':
      return CreateUserScheme.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case 'CustomerScheme':
      return CustomerScheme.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case 'DetailProductScheme':
      return DetailProductScheme.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case 'EstablishmentScheme':
      return EstablishmentScheme.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case 'EstablishmentType':
    case 'FileScheme':
      return FileScheme.fromJson(value as Map<String, dynamic>) as ReturnType;
    case 'HTTPValidationError':
      return HTTPValidationError.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case 'HealthScheme':
      return HealthScheme.fromJson(value as Map<String, dynamic>) as ReturnType;
    case 'LoginUserScheme':
      return LoginUserScheme.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case 'MenuAddProductScheme':
      return MenuAddProductScheme.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case 'MenuDeleteProductScheme':
      return MenuDeleteProductScheme.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case 'MenuScheme':
      return MenuScheme.fromJson(value as Map<String, dynamic>) as ReturnType;
    case 'MessagingScheme':
      return MessagingScheme.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case 'OrderCompleteStatus':
    case 'OrderItemScheme':
      return OrderItemScheme.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case 'OrderItemStatus':
    case 'OrderScheme':
      return OrderScheme.fromJson(value as Map<String, dynamic>) as ReturnType;
    case 'OrderType':
    case 'OrganizationScheme':
      return OrganizationScheme.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case 'PlaceGroupScheme':
      return PlaceGroupScheme.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case 'PlacePriority':
    case 'PlaceScheme':
      return PlaceScheme.fromJson(value as Map<String, dynamic>) as ReturnType;
    case 'PlaceTypeScheme':
      return PlaceTypeScheme.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case 'PortionScheme':
      return PortionScheme.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case 'ProductScheme':
      return ProductScheme.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case 'RoleType':
    case 'SearchResultScheme':
      return SearchResultScheme.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case 'StoryAddEstablishmentScheme':
      return StoryAddEstablishmentScheme.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case 'StoryDeleteEstablishmentScheme':
      return StoryDeleteEstablishmentScheme.fromJson(
            value as Map<String, dynamic>,
          )
          as ReturnType;
    case 'StoryScheme':
      return StoryScheme.fromJson(value as Map<String, dynamic>) as ReturnType;
    case 'TokenScheme':
      return TokenScheme.fromJson(value as Map<String, dynamic>) as ReturnType;
    case 'UpdateCategoryScheme':
      return UpdateCategoryScheme.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case 'UpdateContactScheme':
      return UpdateContactScheme.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case 'UpdateCustomerScheme':
      return UpdateCustomerScheme.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case 'UpdateEstablishmentScheme':
      return UpdateEstablishmentScheme.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case 'UpdateMenuScheme':
      return UpdateMenuScheme.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case 'UpdateOrganizationScheme':
      return UpdateOrganizationScheme.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case 'UpdatePlaceGroupScheme':
      return UpdatePlaceGroupScheme.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case 'UpdatePlaceScheme':
      return UpdatePlaceScheme.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case 'UpdatePlaceTypeScheme':
      return UpdatePlaceTypeScheme.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case 'UpdatePortionScheme':
      return UpdatePortionScheme.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case 'UpdateProductScheme':
      return UpdateProductScheme.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case 'UpdateStoryScheme':
      return UpdateStoryScheme.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case 'UpdateUserScheme':
      return UpdateUserScheme.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case 'UserScheme':
      return UserScheme.fromJson(value as Map<String, dynamic>) as ReturnType;
    case 'ValidationError':
      return ValidationError.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case 'ValidationErrorLocInner':
      return ValidationErrorLocInner.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    default:
      RegExpMatch? match;

      if (value is List && (match = _regList.firstMatch(targetType)) != null) {
        targetType = match![1]!; // ignore: parameter_assignments
        return value
                .map<BaseType>(
                  (dynamic v) => deserialize<BaseType, BaseType>(
                    v,
                    targetType,
                    growable: growable,
                  ),
                )
                .toList(growable: growable)
            as ReturnType;
      }
      if (value is Set && (match = _regSet.firstMatch(targetType)) != null) {
        targetType = match![1]!; // ignore: parameter_assignments
        return value
                .map<BaseType>(
                  (dynamic v) => deserialize<BaseType, BaseType>(
                    v,
                    targetType,
                    growable: growable,
                  ),
                )
                .toSet()
            as ReturnType;
      }
      if (value is Map && (match = _regMap.firstMatch(targetType)) != null) {
        targetType = match![1]!.trim(); // ignore: parameter_assignments
        return Map<String, BaseType>.fromIterables(
              value.keys as Iterable<String>,
              value.values.map(
                (dynamic v) => deserialize<BaseType, BaseType>(
                  v,
                  targetType,
                  growable: growable,
                ),
              ),
            )
            as ReturnType;
      }
      break;
  }
  throw Exception('Cannot deserialize');
}
