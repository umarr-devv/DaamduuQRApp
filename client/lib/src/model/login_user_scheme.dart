//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'login_user_scheme.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class LoginUserScheme {
  /// Returns a new [LoginUserScheme] instance.
  LoginUserScheme({

    required  this.username,

    required  this.password,
  });

  @JsonKey(
    
    name: r'username',
    required: true,
    includeIfNull: false,
  )


  final String username;



  @JsonKey(
    
    name: r'password',
    required: true,
    includeIfNull: false,
  )


  final String password;





    @override
    bool operator ==(Object other) => identical(this, other) || other is LoginUserScheme &&
      other.username == username &&
      other.password == password;

    @override
    int get hashCode =>
        username.hashCode +
        password.hashCode;

  factory LoginUserScheme.fromJson(Map<String, dynamic> json) => _$LoginUserSchemeFromJson(json);

  Map<String, dynamic> toJson() => _$LoginUserSchemeToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

