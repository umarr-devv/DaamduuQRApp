// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'establishment_cubit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EstablishmentState _$EstablishmentStateFromJson(Map<String, dynamic> json) =>
    EstablishmentState(
      establishment: EstablishmentScheme.fromJson(
        json['establishment'] as Map<String, dynamic>,
      ),
      detail: json['detail'] == null
          ? null
          : DetailEstablishmentScheme.fromJson(
              json['detail'] as Map<String, dynamic>,
            ),
      updateTime: DateTime.parse(json['update_time'] as String),
    );

Map<String, dynamic> _$EstablishmentStateToJson(EstablishmentState instance) =>
    <String, dynamic>{
      'establishment': instance.establishment,
      'detail': instance.detail,
      'update_time': instance.updateTime.toIso8601String(),
    };
