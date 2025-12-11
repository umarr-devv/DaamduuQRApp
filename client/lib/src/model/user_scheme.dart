//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:daamduuqr_client/src/model/role_type.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user_scheme.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class UserScheme {
  /// Returns a new [UserScheme] instance.
  UserScheme({

    required  this.id,

    required  this.createAt,

    required  this.updateAt,

    required  this.username,

    required  this.fullname,

    required  this.organizationId,

    required  this.role,

    required  this.imageId,
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
    
    name: r'username',
    required: true,
    includeIfNull: true,
  )


  final String? username;



  @JsonKey(
    
    name: r'fullname',
    required: true,
    includeIfNull: true,
  )


  final String? fullname;



  @JsonKey(
    
    name: r'organization_id',
    required: true,
    includeIfNull: false,
  )


  final String organizationId;



  @JsonKey(
    
    name: r'role',
    required: true,
    includeIfNull: false,
  )


  final RoleType role;



  @JsonKey(
    
    name: r'image_id',
    required: true,
    includeIfNull: true,
  )


  final String? imageId;





    @override
    bool operator ==(Object other) => identical(this, other) || other is UserScheme &&
      other.id == id &&
      other.createAt == createAt &&
      other.updateAt == updateAt &&
      other.username == username &&
      other.fullname == fullname &&
      other.organizationId == organizationId &&
      other.role == role &&
      other.imageId == imageId;

    @override
    int get hashCode =>
        id.hashCode +
        createAt.hashCode +
        updateAt.hashCode +
        (username == null ? 0 : username.hashCode) +
        (fullname == null ? 0 : fullname.hashCode) +
        organizationId.hashCode +
        role.hashCode +
        (imageId == null ? 0 : imageId.hashCode);

  factory UserScheme.fromJson(Map<String, dynamic> json) => _$UserSchemeFromJson(json);

  Map<String, dynamic> toJson() => _$UserSchemeToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

