import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:social_network_mate/utils/extensions/color.extension.dart';

class ColorConverter extends JsonConverter<Color, String> {
  const ColorConverter();

  @override
  Color fromJson(String json) {
    return HexColor.fromHex(json);
  }

  @override
  String toJson(Color object) {
    return object.toHex();
  }
}
