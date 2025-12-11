//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:daamduuqr_client/src/model/week_day.dart';
import 'package:json_annotation/json_annotation.dart';

part 'working_hour_scheme.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class WorkingHourScheme {
  /// Returns a new [WorkingHourScheme] instance.
  WorkingHourScheme({

    required  this.id,

    required  this.createAt,

    required  this.updateAt,

    required  this.dayOfWeek,

    required  this.establishmentId,

    required  this.openTime,

    required  this.closeTime,

    required  this.isWorkDay,
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
    
    name: r'day_of_week',
    required: true,
    includeIfNull: false,
  )


  final WeekDay dayOfWeek;



  @JsonKey(
    
    name: r'establishment_id',
    required: true,
    includeIfNull: false,
  )


  final String establishmentId;



  @JsonKey(
    
    name: r'open_time',
    required: true,
    includeIfNull: true,
  )


  final String? openTime;



  @JsonKey(
    
    name: r'close_time',
    required: true,
    includeIfNull: true,
  )


  final String? closeTime;



  @JsonKey(
    
    name: r'is_work_day',
    required: true,
    includeIfNull: false,
  )


  final bool isWorkDay;





    @override
    bool operator ==(Object other) => identical(this, other) || other is WorkingHourScheme &&
      other.id == id &&
      other.createAt == createAt &&
      other.updateAt == updateAt &&
      other.dayOfWeek == dayOfWeek &&
      other.establishmentId == establishmentId &&
      other.openTime == openTime &&
      other.closeTime == closeTime &&
      other.isWorkDay == isWorkDay;

    @override
    int get hashCode =>
        id.hashCode +
        createAt.hashCode +
        updateAt.hashCode +
        dayOfWeek.hashCode +
        establishmentId.hashCode +
        (openTime == null ? 0 : openTime.hashCode) +
        (closeTime == null ? 0 : closeTime.hashCode) +
        isWorkDay.hashCode;

  factory WorkingHourScheme.fromJson(Map<String, dynamic> json) => _$WorkingHourSchemeFromJson(json);

  Map<String, dynamic> toJson() => _$WorkingHourSchemeToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

