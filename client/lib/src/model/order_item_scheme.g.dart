// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_item_scheme.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderItemScheme _$OrderItemSchemeFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'OrderItemScheme',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const [
            'id',
            'create_at',
            'update_at',
            'order_id',
            'product_id',
            'portion_id',
            'quantity',
            'unit_price',
            'total_sum',
            'note',
            'status',
          ],
        );
        final val = OrderItemScheme(
          id: $checkedConvert('id', (v) => v as String),
          createAt: $checkedConvert(
            'create_at',
            (v) => DateTime.parse(v as String),
          ),
          updateAt: $checkedConvert(
            'update_at',
            (v) => DateTime.parse(v as String),
          ),
          orderId: $checkedConvert('order_id', (v) => v as String),
          productId: $checkedConvert('product_id', (v) => v as String),
          portionId: $checkedConvert('portion_id', (v) => v as String?),
          quantity: $checkedConvert('quantity', (v) => v as num),
          unitPrice: $checkedConvert('unit_price', (v) => v as num),
          totalSum: $checkedConvert('total_sum', (v) => v as num),
          note: $checkedConvert('note', (v) => v as String?),
          status: $checkedConvert(
            'status',
            (v) => $enumDecode(_$OrderItemStatusEnumMap, v),
          ),
        );
        return val;
      },
      fieldKeyMap: const {
        'createAt': 'create_at',
        'updateAt': 'update_at',
        'orderId': 'order_id',
        'productId': 'product_id',
        'portionId': 'portion_id',
        'unitPrice': 'unit_price',
        'totalSum': 'total_sum',
      },
    );

Map<String, dynamic> _$OrderItemSchemeToJson(OrderItemScheme instance) =>
    <String, dynamic>{
      'id': instance.id,
      'create_at': instance.createAt.toIso8601String(),
      'update_at': instance.updateAt.toIso8601String(),
      'order_id': instance.orderId,
      'product_id': instance.productId,
      'portion_id': instance.portionId,
      'quantity': instance.quantity,
      'unit_price': instance.unitPrice,
      'total_sum': instance.totalSum,
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
