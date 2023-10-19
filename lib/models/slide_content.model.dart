import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:social_network_mate/utils/converters/alignment.converter.dart';
import 'package:social_network_mate/utils/converters/border_radius.converter.dart';
import 'package:social_network_mate/utils/converters/color.converter.dart';
import 'package:social_network_mate/utils/converters/edge_insets.converter.dart';
import 'package:social_network_mate/utils/converters/font_weight.converter.dart';
import 'package:social_network_mate/utils/converters/offer.converter.dart';

part 'slide_content.model.freezed.dart';
part 'slide_content.model.g.dart';

enum SlideContentType {
  text,
  list,
  image,
}

abstract class SlideContent {
  String get id;
  SlideContentType get type;
  Alignment get alignment;
  EdgeInsets get margin;
  EdgeInsets get padding;
  Color get color;
  Color get backgroundColor;
  BorderRadius get borderRadius;
  String? get backgroundImageUrl;
  int get rotationDegrees;
  Map<String, dynamic> toJson();
}

// I dont like this
extension DaughterCopyWithoutContent on SlideContent {
  SlideContent copyWithoutContent({
    Alignment? alignment,
    EdgeInsets? margin,
    EdgeInsets? padding,
    Color? color,
    Color? backgroundColor,
    BorderRadius? borderRadius,
    int? rotationDegrees,
  }) {
    return switch (this.type) {
      SlideContentType.text => (this as TextSlideContent).copyWith(
          id: id,
          alignment: alignment ?? (this as TextSlideContent).alignment,
          margin: margin ?? (this as TextSlideContent).margin,
          padding: padding ?? (this as TextSlideContent).padding,
          color: color ?? (this as TextSlideContent).color,
          backgroundColor:
              backgroundColor ?? (this as TextSlideContent).backgroundColor,
          borderRadius: borderRadius ?? (this as TextSlideContent).borderRadius,
          rotationDegrees:
              rotationDegrees ?? (this as TextSlideContent).rotationDegrees,
        ),
      SlideContentType.list => (this as ListSlideContent).copyWith(
          id: id,
          alignment: alignment ?? (this as ListSlideContent).alignment,
          margin: margin ?? (this as ListSlideContent).margin,
          padding: padding ?? (this as ListSlideContent).padding,
          color: color ?? (this as ListSlideContent).color,
          backgroundColor:
              backgroundColor ?? (this as ListSlideContent).backgroundColor,
          borderRadius: borderRadius ?? (this as ListSlideContent).borderRadius,
          rotationDegrees:
              rotationDegrees ?? (this as ListSlideContent).rotationDegrees,
        ),
      SlideContentType.image => (this as ImageSlideContent).copyWith(
          id: id,
          alignment: alignment ?? (this as ImageSlideContent).alignment,
          margin: margin ?? (this as ImageSlideContent).margin,
          padding: padding ?? (this as ImageSlideContent).padding,
          backgroundColor:
              backgroundColor ?? (this as ImageSlideContent).backgroundColor,
          borderRadius:
              borderRadius ?? (this as ImageSlideContent).borderRadius,
          rotationDegrees:
              rotationDegrees ?? (this as ImageSlideContent).rotationDegrees,
        ),
    } as SlideContent;
  }
}

@freezed
class TextSlideContent with _$TextSlideContent {
  @Implements<SlideContent>()
  const factory TextSlideContent({
    required String id,
    @Default(SlideContentType.text) SlideContentType type,
    @AlignmentConverter() @Default(Alignment.center) Alignment alignment,
    @EdgeInsetsConverter() @Default(EdgeInsets.zero) EdgeInsets margin,
    @EdgeInsetsConverter() @Default(EdgeInsets.zero) EdgeInsets padding,
    @ColorConverter() @Default(Colors.black) Color color,
    @ColorConverter() @Default(Colors.transparent) Color backgroundColor,
    @Default(0) int rotationDegrees,
    @FontWeightConverter() @Default(FontWeight.normal) FontWeight fontWeight,
    @BorderRadiusConverter()
    @Default(BorderRadius.zero)
    BorderRadius borderRadius,
    String? backgroundImageUrl,
    required double fontSize,
    required String text,
  }) = _TextSlideContent;

  factory TextSlideContent.fromJson(Map<String, Object?> json) =>
      _$TextSlideContentFromJson(json);
}

@freezed
class ListSlideContent with _$ListSlideContent {
  @Implements<SlideContent>()
  const factory ListSlideContent({
    required String id,
    @Default(SlideContentType.list) SlideContentType type,
    @AlignmentConverter() @Default(Alignment.center) Alignment alignment,
    @EdgeInsetsConverter() @Default(EdgeInsets.zero) EdgeInsets margin,
    @EdgeInsetsConverter() @Default(EdgeInsets.zero) EdgeInsets padding,
    @ColorConverter() @Default(Colors.black) Color color,
    @ColorConverter() @Default(Colors.transparent) Color backgroundColor,
    @Default(0) int rotationDegrees,
    @BorderRadiusConverter()
    @Default(BorderRadius.zero)
    BorderRadius borderRadius,
    String? backgroundImageUrl,
    @Default(false) bool hasDividers,
    required List<String> items,
    required double fontSize,
  }) = _ListSlideContent;

  factory ListSlideContent.fromJson(Map<String, Object?> json) =>
      _$ListSlideContentFromJson(json);
}

@freezed
class ImageSlideContent with _$ImageSlideContent {
  @Implements<SlideContent>()
  const factory ImageSlideContent({
    required String id,
    @Default(SlideContentType.image) SlideContentType type,
    @AlignmentConverter() @Default(Alignment.center) Alignment alignment,
    @EdgeInsetsConverter() @Default(EdgeInsets.zero) EdgeInsets margin,
    @EdgeInsetsConverter() @Default(EdgeInsets.zero) EdgeInsets padding,
    @ColorConverter() @Default(Colors.black) Color color,
    @ColorConverter() @Default(Colors.transparent) Color backgroundColor,
    @Default(0) int rotationDegrees,
    @BorderRadiusConverter()
    @Default(BorderRadius.zero)
    BorderRadius borderRadius,
    String? backgroundImageUrl,
    required String imageUrl,
    @OffsetConverter() @Default(Offset(100, 100)) Offset size,
  }) = _ImageSlideContent;

  factory ImageSlideContent.fromJson(Map<String, Object?> json) =>
      _$ImageSlideContentFromJson(json);
}
