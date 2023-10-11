// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'slide_settings.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SlideSettingsImpl _$$SlideSettingsImplFromJson(Map<String, dynamic> json) =>
    _$SlideSettingsImpl(
      size:
          const OffsetConverter().fromJson(json['size'] as Map<String, double>),
      backgroundColor: json['backgroundColor'] == null
          ? Colors.transparent
          : const ColorConverter().fromJson(json['backgroundColor'] as int),
      margin: json['margin'] == null
          ? EdgeInsets.zero
          : const EdgeInsetsConverter()
              .fromJson(json['margin'] as Map<String, double>),
      padding: json['padding'] == null
          ? EdgeInsets.zero
          : const EdgeInsetsConverter()
              .fromJson(json['padding'] as Map<String, double>),
      borderRadius: json['borderRadius'] == null
          ? BorderRadius.zero
          : const BorderRadiusConverter()
              .fromJson(json['borderRadius'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SlideSettingsImplToJson(_$SlideSettingsImpl instance) =>
    <String, dynamic>{
      'size': const OffsetConverter().toJson(instance.size),
      'backgroundColor':
          const ColorConverter().toJson(instance.backgroundColor),
      'margin': const EdgeInsetsConverter().toJson(instance.margin),
      'padding': const EdgeInsetsConverter().toJson(instance.padding),
      'borderRadius':
          const BorderRadiusConverter().toJson(instance.borderRadius),
    };
