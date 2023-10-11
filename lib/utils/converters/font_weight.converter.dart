import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';

class FontWeightConverter extends JsonConverter<FontWeight, int> {
  const FontWeightConverter();

  @override
  FontWeight fromJson(int json) {
    return FontWeight.values.firstWhere((element) => element.value == json);
  }

  @override
  int toJson(FontWeight object) {
    return object.value;
  }
}
