//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:daamduuqr_client/src/model/role_type.dart';
import 'package:json_annotation/json_annotation.dart';

part 'update_user_scheme.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class UpdateUserScheme {
  /// Returns a new [UpdateUserScheme] instance.
  UpdateUserScheme({

    required  this.username,

    required  this.fullname,

    required  this.role,

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
    includeIfNull: true,
  )


  final RoleType? role;



  @JsonKey(
    
    name: r'password',
    required: true,
    includeIfNull: true,
  )


  final String? password;





    @override
    bool operator ==(Object other) => identical(this, other) || other is UpdateUserScheme &&
      other.username == username &&
      other.fullname == fullname &&
      other.role == role &&
      other.password == password;

    @override
    int get hashCode =>
        (username == null ? 0 : username.hashCode) +
        (fullname == null ? 0 : fullname.hashCode) +
        (role == null ? 0 : role.hashCode) +
        (password == null ? 0 : password.hashCode);

  factory UpdateUserScheme.fromJson(Map<String, dynamic> json) => _$UpdateUserSchemeFromJson(json);

  Map<String, dynamic> toJson() => _$UpdateUserSchemeToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

