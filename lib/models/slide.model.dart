import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:social_network_mate/models/slide_content.model.dart';
import 'package:social_network_mate/models/slide_settings.model.dart';
import 'package:social_network_mate/models/slide_title.model.dart';
import 'package:social_network_mate/utils/converters/slide_content.converter.dart';

part 'slide.model.freezed.dart';
part 'slide.model.g.dart';

@freezed
class Slide with _$Slide {
  const factory Slide({
    required String id,
    @Default(defaultSlideTitle) SlideTitle title,
    @Default(defaultSlideSettings) SlideSettings settings,
    @SlideContentConverter() SlideContent? content,
  }) = _Slide;

  factory Slide.fromJson(Map<String, Object?> json) => _$SlideFromJson(json);
}
