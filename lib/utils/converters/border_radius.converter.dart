import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';

class BorderRadiusConverter
    extends JsonConverter<BorderRadius, Map<String, dynamic>> {
  const BorderRadiusConverter();

  @override
  BorderRadius fromJson(Map<String, dynamic> json) {
    return BorderRadius.only(
      topLeft: Radius.elliptical(json['topLeft']['x'], json['topLeft']['y']),
      topRight: Radius.elliptical(json['topRight']['x'], json['topRight']['y']),
      bottomLeft:
          Radius.elliptical(json['bottomLeft']['x'], json['bottomLeft']['y']),
      bottomRight:
          Radius.elliptical(json['bottomRight']['x'], json['bottomRight']['y']),
    );
  }

  @override
  Map<String, dynamic> toJson(BorderRadius object) {
    return {
      'topLeft': {
        'x': object.topLeft.x,
        'y': object.topLeft.y,
      },
      'topRight': {
        'x': object.topRight.x,
        'y': object.topRight.y,
      },
      'bottomLeft': {
        'x': object.bottomLeft.x,
        'y': object.bottomLeft.y,
      },
      'bottomRight': {
        'x': object.bottomRight.x,
        'y': object.bottomRight.y,
      },
    };
  }
}
