import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';

class AlignmentConverter
    extends JsonConverter<Alignment, Map<String, dynamic>> {
  const AlignmentConverter();

  @override
  Alignment fromJson(Map<String, dynamic> json) {
    return Alignment(
      json['x'] ?? 0,
      json['y'] ?? 0,
    );
  }

  @override
  Map<String, double> toJson(Alignment object) {
    return {
      'x': object.x,
      'y': object.y,
    };
  }
}
