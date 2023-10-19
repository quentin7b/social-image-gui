// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'slide.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SlideImpl _$$SlideImplFromJson(Map<String, dynamic> json) => _$SlideImpl(
      id: json['id'] as String,
      title: json['title'] == null
          ? defaultSlideTitle
          : SlideTitle.fromJson(json['title'] as Map<String, dynamic>),
      settings: json['settings'] == null
          ? defaultSlideSettings
          : SlideSettings.fromJson(json['settings'] as Map<String, dynamic>),
      contents: (json['contents'] as List<dynamic>?)
              ?.map((e) => const SlideContentConverter()
                  .fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$SlideImplToJson(_$SlideImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'settings': instance.settings,
      'contents':
          instance.contents.map(const SlideContentConverter().toJson).toList(),
    };
