import 'package:json_annotation/json_annotation.dart';
import 'package:social_network_mate/models/slide_content.model.dart';

class SlideContentConverter
    extends JsonConverter<SlideContent, Map<String, dynamic>> {
  const SlideContentConverter();

  @override
  SlideContent fromJson(Map<String, dynamic> json) {
    return switch (json['type'] as String) {
      'text' => TextSlideContent.fromJson(json['data'] as Map<String, dynamic>)
          as SlideContent,
      'list' => ListSlideContent.fromJson(json['data'] as Map<String, dynamic>)
          as SlideContent,
      'image' =>
        ImageSlideContent.fromJson(json['data'] as Map<String, dynamic>)
            as SlideContent,
      _ => throw Exception('Unknown SlideContentType: ${json['type']}'),
    };
  }

  @override
  Map<String, dynamic> toJson(SlideContent object) {
    return {
      'type': object.type.name,
      'data': object,
    };
  }
}
