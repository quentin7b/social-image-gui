import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';

class OffsetConverter extends JsonConverter<Offset, Map<String, double>> {
  const OffsetConverter();

  @override
  Offset fromJson(Map<String, double> json) {
    return Offset(
      json['dx'] ?? 0,
      json['dy'] ?? 0,
    );
  }

  @override
  Map<String, double> toJson(Offset object) {
    return {
      'dx': object.dx,
      'dy': object.dy,
    };
  }
}
