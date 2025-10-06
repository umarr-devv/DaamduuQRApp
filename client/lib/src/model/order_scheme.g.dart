// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_scheme.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderScheme _$OrderSchemeFromJson(Map<String, dynamic> json) => $checkedCreate(
  'OrderScheme',
  json,
  ($checkedConvert) {
    $checkKeys(
      json,
      requiredKeys: const [
        'id',
        'create_at',
        'update_at',
        'number',
        'sequence',
        'establishment_id',
        'place_id',
        'customer_id',
        'type',
        'user_id',
        'complete_status',
        'order_sum',
        'place_sum',
        'paid_sum',
        'note',
        'seated_at',
        'completed_at',
        'time_spent_hours',
        'establishment',
        'place',
        'customer',
        'user',
        'items',
      ],
    );
    final val = OrderScheme(
      id: $checkedConvert('id', (v) => v as String),
      createAt: $checkedConvert(
        'create_at',
        (v) => DateTime.parse(v as String),
      ),
      updateAt: $checkedConvert(
        'update_at',
        (v) => DateTime.parse(v as String),
      ),
      number: $checkedConvert('number', (v) => v as String),
      sequence: $checkedConvert('sequence', (v) => (v as num).toInt()),
      establishmentId: $checkedConvert('establishment_id', (v) => v as String),
      placeId: $checkedConvert('place_id', (v) => v as String?),
      customerId: $checkedConvert('customer_id', (v) => v as String?),
      type: $checkedConvert('type', (v) => $enumDecode(_$OrderTypeEnumMap, v)),
      userId: $checkedConvert('user_id', (v) => v as String),
      completeStatus: $checkedConvert(
        'complete_status',
        (v) => $enumDecode(_$OrderCompleteStatusEnumMap, v),
      ),
      orderSum: $checkedConvert('order_sum', (v) => v as num),
      placeSum: $checkedConvert('place_sum', (v) => v as num),
      paidSum: $checkedConvert('paid_sum', (v) => v as num),
      note: $checkedConvert('note', (v) => v as String?),
      seatedAt: $checkedConvert(
        'seated_at',
        (v) => v == null ? null : DateTime.parse(v as String),
      ),
      completedAt: $checkedConvert(
        'completed_at',
        (v) => v == null ? null : DateTime.parse(v as String),
      ),
      timeSpentHours: $checkedConvert('time_spent_hours', (v) => v as num),
      establishment: $checkedConvert(
        'establishment',
        (v) => EstablishmentScheme.fromJson(v as Map<String, dynamic>),
      ),
      place: $checkedConvert(
        'place',
        (v) =>
            v == null ? null : PlaceScheme.fromJson(v as Map<String, dynamic>),
      ),
      customer: $checkedConvert(
        'customer',
        (v) => v == null
            ? null
            : CustomerScheme.fromJson(v as Map<String, dynamic>),
      ),
      user: $checkedConvert(
        'user',
        (v) => UserScheme.fromJson(v as Map<String, dynamic>),
      ),
      items: $checkedConvert(
        'items',
        (v) => (v as List<dynamic>)
            .map((e) => OrderItemScheme.fromJson(e as Map<String, dynamic>))
            .toList(),
      ),
    );
    return val;
  },
  fieldKeyMap: const {
    'createAt': 'create_at',
    'updateAt': 'update_at',
    'establishmentId': 'establishment_id',
    'placeId': 'place_id',
    'customerId': 'customer_id',
    'userId': 'user_id',
    'completeStatus': 'complete_status',
    'orderSum': 'order_sum',
    'placeSum': 'place_sum',
    'paidSum': 'paid_sum',
    'seatedAt': 'seated_at',
    'completedAt': 'completed_at',
    'timeSpentHours': 'time_spent_hours',
  },
);

Map<String, dynamic> _$OrderSchemeToJson(OrderScheme instance) =>
    <String, dynamic>{
      'id': instance.id,
      'create_at': instance.createAt.toIso8601String(),
      'update_at': instance.updateAt.toIso8601String(),
      'number': instance.number,
      'sequence': instance.sequence,
      'establishment_id': instance.establishmentId,
      'place_id': instance.placeId,
      'customer_id': instance.customerId,
      'type': _$OrderTypeEnumMap[instance.type]!,
      'user_id': instance.userId,
      'complete_status': _$OrderCompleteStatusEnumMap[instance.completeStatus]!,
      'order_sum': instance.orderSum,
      'place_sum': instance.placeSum,
      'paid_sum': instance.paidSum,
      'note': instance.note,
      'seated_at': instance.seatedAt?.toIso8601String(),
      'completed_at': instance.completedAt?.toIso8601String(),
      'time_spent_hours': instance.timeSpentHours,
      'establishment': instance.establishment.toJson(),
      'place': instance.place?.toJson(),
      'customer': instance.customer?.toJson(),
      'user': instance.user.toJson(),
      'items': instance.items.map((e) => e.toJson()).toList(),
    };

const _$OrderTypeEnumMap = {
  OrderType.dineIn: 'dine_in',
  OrderType.takeaway: 'takeaway',
};

const _$OrderCompleteStatusEnumMap = {
  OrderCompleteStatus.inProgress: 'in_progress',
  OrderCompleteStatus.cancelled: 'cancelled',
  OrderCompleteStatus.completed: 'completed',
};
