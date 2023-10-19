import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:social_network_mate/utils/converters/border_radius.converter.dart';
import 'package:social_network_mate/utils/converters/color.converter.dart';
import 'package:social_network_mate/utils/converters/edge_insets.converter.dart';
import 'package:social_network_mate/utils/converters/offer.converter.dart';

part 'slide_settings.model.freezed.dart';
part 'slide_settings.model.g.dart';

@freezed
class SlideSettings with _$SlideSettings {
  const factory SlideSettings({
    @OffsetConverter() required Offset size,
    @ColorConverter() @Default(Colors.transparent) Color backgroundColor,
    @EdgeInsetsConverter() @Default(EdgeInsets.zero) EdgeInsets margin,
    @EdgeInsetsConverter() @Default(EdgeInsets.zero) EdgeInsets padding,
    @BorderRadiusConverter()
    @Default(BorderRadius.zero)
    BorderRadius borderRadius,
    String? backgroundImageUrl,
  }) = _SlideSettings;

  factory SlideSettings.fromJson(Map<String, Object?> json) =>
      _$SlideSettingsFromJson(json);
}

const defaultSlideSettings = const SlideSettings(
  size: const Offset(1080, 1080),
);
