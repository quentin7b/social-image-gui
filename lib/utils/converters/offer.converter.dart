import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';

class OffsetConverter extends JsonConverter<Offset, Map<String, dynamic>> {
  const OffsetConverter();

  @override
  Offset fromJson(Map<String, dynamic> json) {
    return Offset(
      json['dx'] ?? 0,
      json['dy'] ?? 0,
    );
  }

  @override
  Map<String, dynamic> toJson(Offset object) {
    return {
      'dx': object.dx,
      'dy': object.dy,
    };
  }
}
