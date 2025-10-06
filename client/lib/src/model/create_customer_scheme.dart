//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'create_customer_scheme.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class CreateCustomerScheme {
  /// Returns a new [CreateCustomerScheme] instance.
  CreateCustomerScheme({

    required  this.email,

    required  this.phoneNumber,

    required  this.fullname,
  });

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
    
    name: r'fullname',
    required: true,
    includeIfNull: true,
  )


  final String? fullname;





    @override
    bool operator ==(Object other) => identical(this, other) || other is CreateCustomerScheme &&
      other.email == email &&
      other.phoneNumber == phoneNumber &&
      other.fullname == fullname;

    @override
    int get hashCode =>
        (email == null ? 0 : email.hashCode) +
        (phoneNumber == null ? 0 : phoneNumber.hashCode) +
        (fullname == null ? 0 : fullname.hashCode);

  factory CreateCustomerScheme.fromJson(Map<String, dynamic> json) => _$CreateCustomerSchemeFromJson(json);

  Map<String, dynamic> toJson() => _$CreateCustomerSchemeToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

