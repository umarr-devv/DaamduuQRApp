//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'story_delete_establishment_scheme.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class StoryDeleteEstablishmentScheme {
  /// Returns a new [StoryDeleteEstablishmentScheme] instance.
  StoryDeleteEstablishmentScheme({

    required  this.establishmentIds,
  });

  @JsonKey(
    
    name: r'establishment_ids',
    required: true,
    includeIfNull: false,
  )


  final List<String> establishmentIds;





    @override
    bool operator ==(Object other) => identical(this, other) || other is StoryDeleteEstablishmentScheme &&
      other.establishmentIds == establishmentIds;

    @override
    int get hashCode =>
        establishmentIds.hashCode;

  factory StoryDeleteEstablishmentScheme.fromJson(Map<String, dynamic> json) => _$StoryDeleteEstablishmentSchemeFromJson(json);

  Map<String, dynamic> toJson() => _$StoryDeleteEstablishmentSchemeToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

