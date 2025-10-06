//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'story_add_establishment_scheme.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class StoryAddEstablishmentScheme {
  /// Returns a new [StoryAddEstablishmentScheme] instance.
  StoryAddEstablishmentScheme({

    required  this.establishmentIds,
  });

  @JsonKey(
    
    name: r'establishment_ids',
    required: true,
    includeIfNull: false,
  )


  final List<String> establishmentIds;





    @override
    bool operator ==(Object other) => identical(this, other) || other is StoryAddEstablishmentScheme &&
      other.establishmentIds == establishmentIds;

    @override
    int get hashCode =>
        establishmentIds.hashCode;

  factory StoryAddEstablishmentScheme.fromJson(Map<String, dynamic> json) => _$StoryAddEstablishmentSchemeFromJson(json);

  Map<String, dynamic> toJson() => _$StoryAddEstablishmentSchemeToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

