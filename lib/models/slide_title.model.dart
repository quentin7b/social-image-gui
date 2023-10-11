import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:social_network_mate/utils/converters/alignment.converter.dart';
import 'package:social_network_mate/utils/converters/border_radius.converter.dart';
import 'package:social_network_mate/utils/converters/color.converter.dart';
import 'package:social_network_mate/utils/converters/edge_insets.converter.dart';
import 'package:social_network_mate/utils/converters/font_weight.converter.dart';

part 'slide_title.model.freezed.dart';
part 'slide_title.model.g.dart';

@freezed
class SlideTitle with _$SlideTitle {
  const factory SlideTitle({
    required bool visible,
    required String title,
    @FontWeightConverter() required FontWeight fontWeight,
    required double fontSize,
    @ColorConverter() required Color color,
    @ColorConverter() @Default(Colors.transparent) Color backgroundColor,
    required String fontFamily,
    @AlignmentConverter() required Alignment alignment,
    @EdgeInsetsConverter() @Default(EdgeInsets.zero) EdgeInsets margin,
    @EdgeInsetsConverter() @Default(EdgeInsets.zero) EdgeInsets padding,
    @BorderRadiusConverter()
    @Default(BorderRadius.zero)
    BorderRadius borderRadius,
  }) = _SlideTitle;

  factory SlideTitle.fromJson(Map<String, Object?> json) =>
      _$SlideTitleFromJson(json);
}

const defaultSlideTitle = const SlideTitle(
  visible: true,
  title: '',
  fontWeight: FontWeight.w700,
  fontSize: 48,
  color: Colors.black,
  backgroundColor: Colors.white,
  fontFamily: 'Roboto',
  alignment: Alignment.topCenter,
);
