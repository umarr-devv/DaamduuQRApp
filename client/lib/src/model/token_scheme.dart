//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'token_scheme.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class TokenScheme {
  /// Returns a new [TokenScheme] instance.
  TokenScheme({

    required  this.accessToken,

     this.tokenType = 'Bearer',
  });

  @JsonKey(
    
    name: r'access_token',
    required: true,
    includeIfNull: false,
  )


  final String accessToken;



  @JsonKey(
    defaultValue: 'Bearer',
    name: r'token_type',
    required: false,
    includeIfNull: false,
  )


  final String? tokenType;





    @override
    bool operator ==(Object other) => identical(this, other) || other is TokenScheme &&
      other.accessToken == accessToken &&
      other.tokenType == tokenType;

    @override
    int get hashCode =>
        accessToken.hashCode +
        tokenType.hashCode;

  factory TokenScheme.fromJson(Map<String, dynamic> json) => _$TokenSchemeFromJson(json);

  Map<String, dynamic> toJson() => _$TokenSchemeToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

