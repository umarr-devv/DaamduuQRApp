//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'create_story_scheme.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class CreateStoryScheme {
  /// Returns a new [CreateStoryScheme] instance.
  CreateStoryScheme({

    required  this.name,

    required  this.url,

    required  this.productId,

    required  this.organizationId,

    required  this.isActive,
  });

  @JsonKey(
    
    name: r'name',
    required: true,
    includeIfNull: false,
  )


  final String name;



  @JsonKey(
    
    name: r'url',
    required: true,
    includeIfNull: true,
  )


  final String? url;



  @JsonKey(
    
    name: r'product_id',
    required: true,
    includeIfNull: true,
  )


  final String? productId;



  @JsonKey(
    
    name: r'organization_id',
    required: true,
    includeIfNull: false,
  )


  final String organizationId;



  @JsonKey(
    
    name: r'is_active',
    required: true,
    includeIfNull: false,
  )


  final bool isActive;





    @override
    bool operator ==(Object other) => identical(this, other) || other is CreateStoryScheme &&
      other.name == name &&
      other.url == url &&
      other.productId == productId &&
      other.organizationId == organizationId &&
      other.isActive == isActive;

    @override
    int get hashCode =>
        name.hashCode +
        (url == null ? 0 : url.hashCode) +
        (productId == null ? 0 : productId.hashCode) +
        organizationId.hashCode +
        isActive.hashCode;

  factory CreateStoryScheme.fromJson(Map<String, dynamic> json) => _$CreateStorySchemeFromJson(json);

  Map<String, dynamic> toJson() => _$CreateStorySchemeToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

