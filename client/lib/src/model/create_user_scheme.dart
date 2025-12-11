//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:daamduuqr_client/src/model/role_type.dart';
import 'package:json_annotation/json_annotation.dart';

part 'create_user_scheme.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class CreateUserScheme {
  /// Returns a new [CreateUserScheme] instance.
  CreateUserScheme({

    required  this.username,

    required  this.fullname,

    required  this.role,

    required  this.organizationId,

    required  this.password,
  });

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
    
    name: r'role',
    required: true,
    includeIfNull: false,
  )


  final RoleType role;



  @JsonKey(
    
    name: r'organization_id',
    required: true,
    includeIfNull: false,
  )


  final String organizationId;



  @JsonKey(
    
    name: r'password',
    required: true,
    includeIfNull: false,
  )


  final String password;





    @override
    bool operator ==(Object other) => identical(this, other) || other is CreateUserScheme &&
      other.username == username &&
      other.fullname == fullname &&
      other.role == role &&
      other.organizationId == organizationId &&
      other.password == password;

    @override
    int get hashCode =>
        (username == null ? 0 : username.hashCode) +
        (fullname == null ? 0 : fullname.hashCode) +
        role.hashCode +
        organizationId.hashCode +
        password.hashCode;

  factory CreateUserScheme.fromJson(Map<String, dynamic> json) => _$CreateUserSchemeFromJson(json);

  Map<String, dynamic> toJson() => _$CreateUserSchemeToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

