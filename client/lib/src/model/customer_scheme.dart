//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'customer_scheme.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class CustomerScheme {
  /// Returns a new [CustomerScheme] instance.
  CustomerScheme({

    required  this.id,

    required  this.createAt,

    required  this.updateAt,

    required  this.firebaseUid,

    required  this.email,

    required  this.phoneNumber,

    required  this.pushToken,

    required  this.fullname,
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
    
    name: r'firebase_uid',
    required: true,
    includeIfNull: true,
  )


  final String? firebaseUid;



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



  @JsonKey(
    
    name: r'fullname',
    required: true,
    includeIfNull: true,
  )


  final String? fullname;





    @override
    bool operator ==(Object other) => identical(this, other) || other is CustomerScheme &&
      other.id == id &&
      other.createAt == createAt &&
      other.updateAt == updateAt &&
      other.firebaseUid == firebaseUid &&
      other.email == email &&
      other.phoneNumber == phoneNumber &&
      other.pushToken == pushToken &&
      other.fullname == fullname;

    @override
    int get hashCode =>
        id.hashCode +
        createAt.hashCode +
        updateAt.hashCode +
        (firebaseUid == null ? 0 : firebaseUid.hashCode) +
        (email == null ? 0 : email.hashCode) +
        (phoneNumber == null ? 0 : phoneNumber.hashCode) +
        (pushToken == null ? 0 : pushToken.hashCode) +
        (fullname == null ? 0 : fullname.hashCode);

  factory CustomerScheme.fromJson(Map<String, dynamic> json) => _$CustomerSchemeFromJson(json);

  Map<String, dynamic> toJson() => _$CustomerSchemeToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

