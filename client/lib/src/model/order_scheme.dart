//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:daamduuqr_client/src/model/customer_scheme.dart';
import 'package:daamduuqr_client/src/model/order_type.dart';
import 'package:daamduuqr_client/src/model/place_scheme.dart';
import 'package:daamduuqr_client/src/model/order_complete_status.dart';
import 'package:daamduuqr_client/src/model/user_scheme.dart';
import 'package:daamduuqr_client/src/model/order_item_scheme.dart';
import 'package:daamduuqr_client/src/model/establishment_scheme.dart';
import 'package:json_annotation/json_annotation.dart';

part 'order_scheme.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class OrderScheme {
  /// Returns a new [OrderScheme] instance.
  OrderScheme({

    required  this.id,

    required  this.createAt,

    required  this.updateAt,

    required  this.number,

    required  this.sequence,

    required  this.establishmentId,

    required  this.placeId,

    required  this.customerId,

    required  this.type,

    required  this.userId,

    required  this.completeStatus,

    required  this.orderSum,

    required  this.placeSum,

    required  this.paidSum,

    required  this.note,

    required  this.seatedAt,

    required  this.completedAt,

    required  this.timeSpentHours,

    required  this.establishment,

    required  this.place,

    required  this.customer,

    required  this.user,

    required  this.items,
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
    
    name: r'number',
    required: true,
    includeIfNull: false,
  )


  final String number;



  @JsonKey(
    
    name: r'sequence',
    required: true,
    includeIfNull: false,
  )


  final int sequence;



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
    
    name: r'complete_status',
    required: true,
    includeIfNull: false,
  )


  final OrderCompleteStatus completeStatus;



  @JsonKey(
    
    name: r'order_sum',
    required: true,
    includeIfNull: false,
  )


  final num orderSum;



  @JsonKey(
    
    name: r'place_sum',
    required: true,
    includeIfNull: false,
  )


  final num placeSum;



  @JsonKey(
    
    name: r'paid_sum',
    required: true,
    includeIfNull: false,
  )


  final num paidSum;



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
    
    name: r'completed_at',
    required: true,
    includeIfNull: true,
  )


  final DateTime? completedAt;



  @JsonKey(
    
    name: r'time_spent_hours',
    required: true,
    includeIfNull: false,
  )


  final num timeSpentHours;



  @JsonKey(
    
    name: r'establishment',
    required: true,
    includeIfNull: false,
  )


  final EstablishmentScheme establishment;



  @JsonKey(
    
    name: r'place',
    required: true,
    includeIfNull: true,
  )


  final PlaceScheme? place;



  @JsonKey(
    
    name: r'customer',
    required: true,
    includeIfNull: true,
  )


  final CustomerScheme? customer;



  @JsonKey(
    
    name: r'user',
    required: true,
    includeIfNull: false,
  )


  final UserScheme user;



  @JsonKey(
    
    name: r'items',
    required: true,
    includeIfNull: false,
  )


  final List<OrderItemScheme> items;





    @override
    bool operator ==(Object other) => identical(this, other) || other is OrderScheme &&
      other.id == id &&
      other.createAt == createAt &&
      other.updateAt == updateAt &&
      other.number == number &&
      other.sequence == sequence &&
      other.establishmentId == establishmentId &&
      other.placeId == placeId &&
      other.customerId == customerId &&
      other.type == type &&
      other.userId == userId &&
      other.completeStatus == completeStatus &&
      other.orderSum == orderSum &&
      other.placeSum == placeSum &&
      other.paidSum == paidSum &&
      other.note == note &&
      other.seatedAt == seatedAt &&
      other.completedAt == completedAt &&
      other.timeSpentHours == timeSpentHours &&
      other.establishment == establishment &&
      other.place == place &&
      other.customer == customer &&
      other.user == user &&
      other.items == items;

    @override
    int get hashCode =>
        id.hashCode +
        createAt.hashCode +
        updateAt.hashCode +
        number.hashCode +
        sequence.hashCode +
        establishmentId.hashCode +
        (placeId == null ? 0 : placeId.hashCode) +
        (customerId == null ? 0 : customerId.hashCode) +
        type.hashCode +
        userId.hashCode +
        completeStatus.hashCode +
        orderSum.hashCode +
        placeSum.hashCode +
        paidSum.hashCode +
        (note == null ? 0 : note.hashCode) +
        (seatedAt == null ? 0 : seatedAt.hashCode) +
        (completedAt == null ? 0 : completedAt.hashCode) +
        timeSpentHours.hashCode +
        establishment.hashCode +
        (place == null ? 0 : place.hashCode) +
        (customer == null ? 0 : customer.hashCode) +
        user.hashCode +
        items.hashCode;

  factory OrderScheme.fromJson(Map<String, dynamic> json) => _$OrderSchemeFromJson(json);

  Map<String, dynamic> toJson() => _$OrderSchemeToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

