import 'dart:typed_data';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:social_network_mate/utils/converters/uint8list.converter.dart';

part 'slide_content.model.freezed.dart';
part 'slide_content.model.g.dart';

enum SlideContentType {
  text,
  list,
  image,
}

abstract class SlideContent {
  SlideContentType get type;
  Map<String, dynamic> toJson();
}

@freezed
class TextSlideContent with _$TextSlideContent {
  @Implements<SlideContent>()
  const factory TextSlideContent({
    @Default(SlideContentType.text) SlideContentType type,
    required String text,
  }) = _TextSlideContent;

  factory TextSlideContent.fromJson(Map<String, Object?> json) =>
      _$TextSlideContentFromJson(json);
}

@freezed
class ListSlideContent with _$ListSlideContent {
  @Implements<SlideContent>()
  const factory ListSlideContent({
    @Default(SlideContentType.list) SlideContentType type,
    required List<String> items,
  }) = _ListSlideContent;

  factory ListSlideContent.fromJson(Map<String, Object?> json) =>
      _$ListSlideContentFromJson(json);
}

@freezed
class ImageSlideContent with _$ImageSlideContent {
  @Implements<SlideContent>()
  const factory ImageSlideContent({
    @Default(SlideContentType.image) SlideContentType type,
    @Uint8ListConverter() required Uint8List image,
  }) = _ImageSlideContent;

  factory ImageSlideContent.fromJson(Map<String, Object?> json) =>
      _$ImageSlideContentFromJson(json);
}
