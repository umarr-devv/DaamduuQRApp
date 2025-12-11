//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';


enum EstablishmentType {
      @JsonValue(r'restaurant')
      restaurant(r'restaurant'),
      @JsonValue(r'fast_food')
      fastFood(r'fast_food'),
      @JsonValue(r'cafe')
      cafe(r'cafe'),
      @JsonValue(r'confectionery')
      confectionery(r'confectionery'),
      @JsonValue(r'bar')
      bar(r'bar'),
      @JsonValue(r'coffee_shop')
      coffeeShop(r'coffee_shop');

  const EstablishmentType(this.value);

  final String value;

  @override
  String toString() => value;
}
