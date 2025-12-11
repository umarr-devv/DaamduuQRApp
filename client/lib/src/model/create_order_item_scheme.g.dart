// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_order_item_scheme.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateOrderItemScheme _$CreateOrderItemSchemeFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'CreateOrderItemScheme',
  json,
  ($checkedConvert) {
    $checkKeys(
      json,
      requiredKeys: const [
        'product_id',
        'portion_id',
        'quantity',
        'unit_price',
        'note',
        'status',
      ],
    );
    final val = CreateOrderItemScheme(
      productId: $checkedConvert('product_id', (v) => v as String),
      portionId: $checkedConvert('portion_id', (v) => v as String?),
      quantity: $checkedConvert('quantity', (v) => v as num),
      unitPrice: $checkedConvert('unit_price', (v) => v as num),
      note: $checkedConvert('note', (v) => v as String?),
      status: $checkedConvert(
        'status',
        (v) => $enumDecode(_$OrderItemStatusEnumMap, v),
      ),
    );
    return val;
  },
  fieldKeyMap: const {
    'productId': 'product_id',
    'portionId': 'portion_id',
    'unitPrice': 'unit_price',
  },
);

Map<String, dynamic> _$CreateOrderItemSchemeToJson(
  CreateOrderItemScheme instance,
) => <String, dynamic>{
  'product_id': instance.productId,
  'portion_id': instance.portionId,
  'quantity': instance.quantity,
  'unit_price': instance.unitPrice,
  'note': instance.note,
  'status': _$OrderItemStatusEnumMap[instance.status]!,
};

const _$OrderItemStatusEnumMap = {
  OrderItemStatus.pending: 'pending',
  OrderItemStatus.inProgress: 'in_progress',
  OrderItemStatus.rejected: 'rejected',
  OrderItemStatus.cancelled: 'cancelled',
  OrderItemStatus.finished: 'finished',
};
