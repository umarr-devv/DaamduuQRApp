//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:daamduuqr_client/src/model/contact_type.dart';
import 'package:json_annotation/json_annotation.dart';

part 'create_contact_scheme.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class CreateContactScheme {
  /// Returns a new [CreateContactScheme] instance.
  CreateContactScheme({

    required  this.name,

    required  this.url,

    required  this.type,
  });

  @JsonKey(
    
    name: r'name',
    required: true,
    includeIfNull: true,
  )


  final String? name;



  @JsonKey(
    
    name: r'url',
    required: true,
    includeIfNull: false,
  )


  final String url;



  @JsonKey(
    
    name: r'type',
    required: true,
    includeIfNull: false,
  )


  final ContactType type;





    @override
    bool operator ==(Object other) => identical(this, other) || other is CreateContactScheme &&
      other.name == name &&
      other.url == url &&
      other.type == type;

    @override
    int get hashCode =>
        (name == null ? 0 : name.hashCode) +
        url.hashCode +
        type.hashCode;

  factory CreateContactScheme.fromJson(Map<String, dynamic> json) => _$CreateContactSchemeFromJson(json);

  Map<String, dynamic> toJson() => _$CreateContactSchemeToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

