//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:daamduuqr_client/src/model/order_item_status.dart';
import 'package:json_annotation/json_annotation.dart';

part 'order_item_scheme.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class OrderItemScheme {
  /// Returns a new [OrderItemScheme] instance.
  OrderItemScheme({

    required  this.id,

    required  this.createAt,

    required  this.updateAt,

    required  this.orderId,

    required  this.productId,

    required  this.portionId,

    required  this.quantity,

    required  this.unitPrice,

    required  this.totalSum,

    required  this.note,

    required  this.status,
  });

  @JsonKey(
    
    name: r'id',
    required: true,
    includeIfNull: false,
  )


  final String id;



  @JsonKey(
    
    name: r'create_at',
    required: true,
    includeIfNull: false,
  )


  final DateTime createAt;



  @JsonKey(
    
    name: r'update_at',
    required: true,
    includeIfNull: false,
  )


  final DateTime updateAt;



  @JsonKey(
    
    name: r'order_id',
    required: true,
    includeIfNull: false,
  )


  final String orderId;



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
    
    name: r'total_sum',
    required: true,
    includeIfNull: false,
  )


  final num totalSum;



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
    bool operator ==(Object other) => identical(this, other) || other is OrderItemScheme &&
      other.id == id &&
      other.createAt == createAt &&
      other.updateAt == updateAt &&
      other.orderId == orderId &&
      other.productId == productId &&
      other.portionId == portionId &&
      other.quantity == quantity &&
      other.unitPrice == unitPrice &&
      other.totalSum == totalSum &&
      other.note == note &&
      other.status == status;

    @override
    int get hashCode =>
        id.hashCode +
        createAt.hashCode +
        updateAt.hashCode +
        orderId.hashCode +
        productId.hashCode +
        (portionId == null ? 0 : portionId.hashCode) +
        quantity.hashCode +
        unitPrice.hashCode +
        totalSum.hashCode +
        (note == null ? 0 : note.hashCode) +
        status.hashCode;

  factory OrderItemScheme.fromJson(Map<String, dynamic> json) => _$OrderItemSchemeFromJson(json);

  Map<String, dynamic> toJson() => _$OrderItemSchemeToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

