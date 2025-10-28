//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'update_customer_scheme.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class UpdateCustomerScheme {
  /// Returns a new [UpdateCustomerScheme] instance.
  UpdateCustomerScheme({

    required  this.fullname,

    required  this.email,

    required  this.phoneNumber,

    required  this.pushToken,
  });

  @JsonKey(
    
    name: r'fullname',
    required: true,
    includeIfNull: true,
  )


  final String? fullname;



  @JsonKey(
    
    name: r'email',
    required: true,
    includeIfNull: true,
  )


  final String? email;



  @JsonKey(
    
    name: r'phone_number',
    required: true,
    includeIfNull: true,
  )


  final String? phoneNumber;



  @JsonKey(
    
    name: r'push_token',
    required: true,
    includeIfNull: true,
  )


  final String? pushToken;





    @override
    bool operator ==(Object other) => identical(this, other) || other is UpdateCustomerScheme &&
      other.fullname == fullname &&
      other.email == email &&
      other.phoneNumber == phoneNumber &&
      other.pushToken == pushToken;

    @override
    int get hashCode =>
        (fullname == null ? 0 : fullname.hashCode) +
        (email == null ? 0 : email.hashCode) +
        (phoneNumber == null ? 0 : phoneNumber.hashCode) +
        (pushToken == null ? 0 : pushToken.hashCode);

  factory UpdateCustomerScheme.fromJson(Map<String, dynamic> json) => _$UpdateCustomerSchemeFromJson(json);

  Map<String, dynamic> toJson() => _$UpdateCustomerSchemeToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

