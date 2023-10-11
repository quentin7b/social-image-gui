import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';

class EdgeInsetsConverter
    extends JsonConverter<EdgeInsets, Map<String, double>> {
  const EdgeInsetsConverter();

  @override
  EdgeInsets fromJson(Map<String, double> json) {
    return EdgeInsets.only(
      top: json['top'] ?? 0,
      right: json['right'] ?? 0,
      bottom: json['bottom'] ?? 0,
      left: json['left'] ?? 0,
    );
  }

  @override
  Map<String, double> toJson(EdgeInsets object) {
    return {
      'top': object.top,
      'right': object.right,
      'bottom': object.bottom,
      'left': object.left,
    };
  }
}
