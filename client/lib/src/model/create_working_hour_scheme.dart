//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:daamduuqr_client/src/model/week_day.dart';
import 'package:json_annotation/json_annotation.dart';

part 'create_working_hour_scheme.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class CreateWorkingHourScheme {
  /// Returns a new [CreateWorkingHourScheme] instance.
  CreateWorkingHourScheme({

    required  this.dayOfWeek,

    required  this.openTime,

    required  this.closeTime,

    required  this.isWorkDay,
  });

  @JsonKey(
    
    name: r'day_of_week',
    required: true,
    includeIfNull: false,
  )


  final WeekDay dayOfWeek;



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
    bool operator ==(Object other) => identical(this, other) || other is CreateWorkingHourScheme &&
      other.dayOfWeek == dayOfWeek &&
      other.openTime == openTime &&
      other.closeTime == closeTime &&
      other.isWorkDay == isWorkDay;

    @override
    int get hashCode =>
        dayOfWeek.hashCode +
        (openTime == null ? 0 : openTime.hashCode) +
        (closeTime == null ? 0 : closeTime.hashCode) +
        isWorkDay.hashCode;

  factory CreateWorkingHourScheme.fromJson(Map<String, dynamic> json) => _$CreateWorkingHourSchemeFromJson(json);

  Map<String, dynamic> toJson() => _$CreateWorkingHourSchemeToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

