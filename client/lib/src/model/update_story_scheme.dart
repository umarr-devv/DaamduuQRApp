//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'update_story_scheme.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class UpdateStoryScheme {
  /// Returns a new [UpdateStoryScheme] instance.
  UpdateStoryScheme({

    required  this.name,

    required  this.url,

    required  this.productId,

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
    
    name: r'is_active',
    required: true,
    includeIfNull: false,
  )


  final bool isActive;





    @override
    bool operator ==(Object other) => identical(this, other) || other is UpdateStoryScheme &&
      other.name == name &&
      other.url == url &&
      other.productId == productId &&
      other.isActive == isActive;

    @override
    int get hashCode =>
        name.hashCode +
        (url == null ? 0 : url.hashCode) +
        (productId == null ? 0 : productId.hashCode) +
        isActive.hashCode;

  factory UpdateStoryScheme.fromJson(Map<String, dynamic> json) => _$UpdateStorySchemeFromJson(json);

  Map<String, dynamic> toJson() => _$UpdateStorySchemeToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

