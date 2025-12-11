//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:daamduuqr_client/src/model/order_item_status.dart';
import 'package:json_annotation/json_annotation.dart';

part 'create_order_item_scheme.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class CreateOrderItemScheme {
  /// Returns a new [CreateOrderItemScheme] instance.
  CreateOrderItemScheme({

    required  this.productId,

    required  this.portionId,

    required  this.quantity,

    required  this.unitPrice,

    required  this.note,

    required  this.status,
  });

  @JsonKey(
    
    name: r'product_id',
    required: true,
    includeIfNull: false,
  )


  final String productId;



  @JsonKey(
    
    name: r'portion_id',
    required: true,
    includeIfNull: true,
  )


  final String? portionId;



  @JsonKey(
    
    name: r'quantity',
    required: true,
    includeIfNull: false,
  )


  final num quantity;



  @JsonKey(
    
    name: r'unit_price',
    required: true,
    includeIfNull: false,
  )


  final num unitPrice;



  @JsonKey(
    
    name: r'note',
    required: true,
    includeIfNull: true,
  )


  final String? note;



  @JsonKey(
    
    name: r'status',
    required: true,
    includeIfNull: false,
  )


  final OrderItemStatus status;





    @override
    bool operator ==(Object other) => identical(this, other) || other is CreateOrderItemScheme &&
      other.productId == productId &&
      other.portionId == portionId &&
      other.quantity == quantity &&
      other.unitPrice == unitPrice &&
      other.note == note &&
      other.status == status;

    @override
    int get hashCode =>
        productId.hashCode +
        (portionId == null ? 0 : portionId.hashCode) +
        quantity.hashCode +
        unitPrice.hashCode +
        (note == null ? 0 : note.hashCode) +
        status.hashCode;

  factory CreateOrderItemScheme.fromJson(Map<String, dynamic> json) => _$CreateOrderItemSchemeFromJson(json);

  Map<String, dynamic> toJson() => _$CreateOrderItemSchemeToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

