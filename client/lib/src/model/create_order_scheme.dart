//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:daamduuqr_client/src/model/order_type.dart';
import 'package:daamduuqr_client/src/model/create_order_item_scheme.dart';
import 'package:json_annotation/json_annotation.dart';

part 'create_order_scheme.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class CreateOrderScheme {
  /// Returns a new [CreateOrderScheme] instance.
  CreateOrderScheme({

    required  this.establishmentId,

    required  this.placeId,

    required  this.customerId,

    required  this.type,

    required  this.userId,

    required  this.note,

    required  this.seatedAt,

    required  this.items,
  });

  @JsonKey(
    
    name: r'establishment_id',
    required: true,
    includeIfNull: false,
  )


  final String establishmentId;



  @JsonKey(
    
    name: r'place_id',
    required: true,
    includeIfNull: true,
  )


  final String? placeId;



  @JsonKey(
    
    name: r'customer_id',
    required: true,
    includeIfNull: true,
  )


  final String? customerId;



  @JsonKey(
    
    name: r'type',
    required: true,
    includeIfNull: false,
  )


  final OrderType type;



  @JsonKey(
    
    name: r'user_id',
    required: true,
    includeIfNull: false,
  )


  final String userId;



  @JsonKey(
    
    name: r'note',
    required: true,
    includeIfNull: true,
  )


  final String? note;



  @JsonKey(
    
    name: r'seated_at',
    required: true,
    includeIfNull: true,
  )


  final DateTime? seatedAt;



  @JsonKey(
    
    name: r'items',
    required: true,
    includeIfNull: false,
  )


  final List<CreateOrderItemScheme> items;





    @override
    bool operator ==(Object other) => identical(this, other) || other is CreateOrderScheme &&
      other.establishmentId == establishmentId &&
      other.placeId == placeId &&
      other.customerId == customerId &&
      other.type == type &&
      other.userId == userId &&
      other.note == note &&
      other.seatedAt == seatedAt &&
      other.items == items;

    @override
    int get hashCode =>
        establishmentId.hashCode +
        (placeId == null ? 0 : placeId.hashCode) +
        (customerId == null ? 0 : customerId.hashCode) +
        type.hashCode +
        userId.hashCode +
        (note == null ? 0 : note.hashCode) +
        (seatedAt == null ? 0 : seatedAt.hashCode) +
        items.hashCode;

  factory CreateOrderScheme.fromJson(Map<String, dynamic> json) => _$CreateOrderSchemeFromJson(json);

  Map<String, dynamic> toJson() => _$CreateOrderSchemeToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

