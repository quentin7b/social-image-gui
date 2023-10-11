// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'slide_content.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TextSlideContentImpl _$$TextSlideContentImplFromJson(
        Map<String, dynamic> json) =>
    _$TextSlideContentImpl(
      type: $enumDecodeNullable(_$SlideContentTypeEnumMap, json['type']) ??
          SlideContentType.text,
      text: json['text'] as String,
    );

Map<String, dynamic> _$$TextSlideContentImplToJson(
        _$TextSlideContentImpl instance) =>
    <String, dynamic>{
      'type': _$SlideContentTypeEnumMap[instance.type]!,
      'text': instance.text,
    };

const _$SlideContentTypeEnumMap = {
  SlideContentType.text: 'text',
  SlideContentType.list: 'list',
  SlideContentType.image: 'image',
};

_$ListSlideContentImpl _$$ListSlideContentImplFromJson(
        Map<String, dynamic> json) =>
    _$ListSlideContentImpl(
      type: $enumDecodeNullable(_$SlideContentTypeEnumMap, json['type']) ??
          SlideContentType.list,
      items: (json['items'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$ListSlideContentImplToJson(
        _$ListSlideContentImpl instance) =>
    <String, dynamic>{
      'type': _$SlideContentTypeEnumMap[instance.type]!,
      'items': instance.items,
    };

_$ImageSlideContentImpl _$$ImageSlideContentImplFromJson(
        Map<String, dynamic> json) =>
    _$ImageSlideContentImpl(
      type: $enumDecodeNullable(_$SlideContentTypeEnumMap, json['type']) ??
          SlideContentType.image,
      image: const Uint8ListConverter().fromJson(json['image'] as List<int>),
    );

Map<String, dynamic> _$$ImageSlideContentImplToJson(
        _$ImageSlideContentImpl instance) =>
    <String, dynamic>{
      'type': _$SlideContentTypeEnumMap[instance.type]!,
      'image': const Uint8ListConverter().toJson(instance.image),
    };
