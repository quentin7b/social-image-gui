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
      content: _$JsonConverterFromJson<Map<String, dynamic>, SlideContent>(
          json['content'], const SlideContentConverter().fromJson),
    );

Map<String, dynamic> _$$SlideImplToJson(_$SlideImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'settings': instance.settings,
      'content': _$JsonConverterToJson<Map<String, dynamic>, SlideContent>(
          instance.content, const SlideContentConverter().toJson),
    };

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) =>
    value == null ? null : toJson(value);
