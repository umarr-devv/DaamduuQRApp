//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'file_scheme.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class FileScheme {
  /// Returns a new [FileScheme] instance.
  FileScheme({

    required  this.id,

    required  this.createAt,

    required  this.updateAt,

    required  this.fileName,

    required  this.fileType,
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
    
    name: r'file_name',
    required: true,
    includeIfNull: false,
  )


  final String fileName;



  @JsonKey(
    
    name: r'file_type',
    required: true,
    includeIfNull: false,
  )


  final String fileType;





    @override
    bool operator ==(Object other) => identical(this, other) || other is FileScheme &&
      other.id == id &&
      other.createAt == createAt &&
      other.updateAt == updateAt &&
      other.fileName == fileName &&
      other.fileType == fileType;

    @override
    int get hashCode =>
        id.hashCode +
        createAt.hashCode +
        updateAt.hashCode +
        fileName.hashCode +
        fileType.hashCode;

  factory FileScheme.fromJson(Map<String, dynamic> json) => _$FileSchemeFromJson(json);

  Map<String, dynamic> toJson() => _$FileSchemeToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

