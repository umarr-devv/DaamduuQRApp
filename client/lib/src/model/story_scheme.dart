//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:daamduuqr_client/src/model/file_scheme.dart';
import 'package:json_annotation/json_annotation.dart';

part 'story_scheme.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class StoryScheme {
  /// Returns a new [StoryScheme] instance.
  StoryScheme({

    required  this.id,

    required  this.createAt,

    required  this.updateAt,

    required  this.name,

    required  this.url,

    required  this.productId,

    required  this.imageId,

    required  this.organizationId,

    required  this.isActive,

    required  this.content,
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
    
    name: r'image_id',
    required: true,
    includeIfNull: true,
  )


  final String? imageId;



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



  @JsonKey(
    
    name: r'content',
    required: true,
    includeIfNull: false,
  )


  final List<FileScheme> content;





    @override
    bool operator ==(Object other) => identical(this, other) || other is StoryScheme &&
      other.id == id &&
      other.createAt == createAt &&
      other.updateAt == updateAt &&
      other.name == name &&
      other.url == url &&
      other.productId == productId &&
      other.imageId == imageId &&
      other.organizationId == organizationId &&
      other.isActive == isActive &&
      other.content == content;

    @override
    int get hashCode =>
        id.hashCode +
        createAt.hashCode +
        updateAt.hashCode +
        name.hashCode +
        (url == null ? 0 : url.hashCode) +
        (productId == null ? 0 : productId.hashCode) +
        (imageId == null ? 0 : imageId.hashCode) +
        organizationId.hashCode +
        isActive.hashCode +
        content.hashCode;

  factory StoryScheme.fromJson(Map<String, dynamic> json) => _$StorySchemeFromJson(json);

  Map<String, dynamic> toJson() => _$StorySchemeToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

