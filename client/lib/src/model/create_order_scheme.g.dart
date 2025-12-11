// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_order_scheme.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateOrderScheme _$CreateOrderSchemeFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'CreateOrderScheme',
  json,
  ($checkedConvert) {
    $checkKeys(
      json,
      requiredKeys: const [
        'establishment_id',
        'place_id',
        'customer_id',
        'type',
        'user_id',
        'note',
        'seated_at',
        'items',
      ],
    );
    final val = CreateOrderScheme(
      establishmentId: $checkedConvert('establishment_id', (v) => v as String),
      placeId: $checkedConvert('place_id', (v) => v as String?),
      customerId: $checkedConvert('customer_id', (v) => v as String?),
      type: $checkedConvert('type', (v) => $enumDecode(_$OrderTypeEnumMap, v)),
      userId: $checkedConvert('user_id', (v) => v as String),
      note: $checkedConvert('note', (v) => v as String?),
      seatedAt: $checkedConvert(
        'seated_at',
        (v) => v == null ? null : DateTime.parse(v as String),
      ),
      items: $checkedConvert(
        'items',
        (v) => (v as List<dynamic>)
            .map(
              (e) => CreateOrderItemScheme.fromJson(e as Map<String, dynamic>),
            )
            .toList(),
      ),
    );
    return val;
  },
  fieldKeyMap: const {
    'establishmentId': 'establishment_id',
    'placeId': 'place_id',
    'customerId': 'customer_id',
    'userId': 'user_id',
    'seatedAt': 'seated_at',
  },
);

Map<String, dynamic> _$CreateOrderSchemeToJson(CreateOrderScheme instance) =>
    <String, dynamic>{
      'establishment_id': instance.establishmentId,
      'place_id': instance.placeId,
      'customer_id': instance.customerId,
      'type': _$OrderTypeEnumMap[instance.type]!,
      'user_id': instance.userId,
      'note': instance.note,
      'seated_at': instance.seatedAt?.toIso8601String(),
      'items': instance.items.map((e) => e.toJson()).toList(),
    };

const _$OrderTypeEnumMap = {
  OrderType.dineIn: 'dine_in',
  OrderType.takeaway: 'takeaway',
};
