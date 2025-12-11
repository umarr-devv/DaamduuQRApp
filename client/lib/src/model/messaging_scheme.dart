//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'messaging_scheme.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class MessagingScheme {
  /// Returns a new [MessagingScheme] instance.
  MessagingScheme({

    required  this.pushTokens,

    required  this.title,

    required  this.body,

    required  this.image,
  });

  @JsonKey(
    
    name: r'push_tokens',
    required: true,
    includeIfNull: false,
  )


  final List<String> pushTokens;



  @JsonKey(
    
    name: r'title',
    required: true,
    includeIfNull: false,
  )


  final String title;



  @JsonKey(
    
    name: r'body',
    required: true,
    includeIfNull: true,
  )


  final String? body;



  @JsonKey(
    
    name: r'image',
    required: true,
    includeIfNull: true,
  )


  final String? image;





    @override
    bool operator ==(Object other) => identical(this, other) || other is MessagingScheme &&
      other.pushTokens == pushTokens &&
      other.title == title &&
      other.body == body &&
      other.image == image;

    @override
    int get hashCode =>
        pushTokens.hashCode +
        title.hashCode +
        (body == null ? 0 : body.hashCode) +
        (image == null ? 0 : image.hashCode);

  factory MessagingScheme.fromJson(Map<String, dynamic> json) => _$MessagingSchemeFromJson(json);

  Map<String, dynamic> toJson() => _$MessagingSchemeToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

