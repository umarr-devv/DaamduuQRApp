//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:daamduuqr_client/src/model/contact_type.dart';
import 'package:json_annotation/json_annotation.dart';

part 'contact_scheme.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ContactScheme {
  /// Returns a new [ContactScheme] instance.
  ContactScheme({

    required  this.id,

    required  this.createAt,

    required  this.updateAt,

    required  this.name,

    required  this.url,

    required  this.type,
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
    bool operator ==(Object other) => identical(this, other) || other is ContactScheme &&
      other.id == id &&
      other.createAt == createAt &&
      other.updateAt == updateAt &&
      other.name == name &&
      other.url == url &&
      other.type == type;

    @override
    int get hashCode =>
        id.hashCode +
        createAt.hashCode +
        updateAt.hashCode +
        (name == null ? 0 : name.hashCode) +
        url.hashCode +
        type.hashCode;

  factory ContactScheme.fromJson(Map<String, dynamic> json) => _$ContactSchemeFromJson(json);

  Map<String, dynamic> toJson() => _$ContactSchemeToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

