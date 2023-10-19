// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'slide_title.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SlideTitleImpl _$$SlideTitleImplFromJson(Map<String, dynamic> json) =>
    _$SlideTitleImpl(
      visible: json['visible'] as bool,
      title: json['title'] as String,
      fontWeight:
          const FontWeightConverter().fromJson(json['fontWeight'] as int),
      fontSize: (json['fontSize'] as num).toDouble(),
      color: const ColorConverter().fromJson(json['color'] as String),
      backgroundColor: json['backgroundColor'] == null
          ? Colors.transparent
          : const ColorConverter().fromJson(json['backgroundColor'] as String),
      fontFamily: json['fontFamily'] as String,
      alignment: const AlignmentConverter()
          .fromJson(json['alignment'] as Map<String, dynamic>),
      margin: json['margin'] == null
          ? EdgeInsets.zero
          : const EdgeInsetsConverter()
              .fromJson(json['margin'] as Map<String, dynamic>),
      padding: json['padding'] == null
          ? EdgeInsets.zero
          : const EdgeInsetsConverter()
              .fromJson(json['padding'] as Map<String, dynamic>),
      borderRadius: json['borderRadius'] == null
          ? BorderRadius.zero
          : const BorderRadiusConverter()
              .fromJson(json['borderRadius'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SlideTitleImplToJson(_$SlideTitleImpl instance) =>
    <String, dynamic>{
      'visible': instance.visible,
      'title': instance.title,
      'fontWeight': const FontWeightConverter().toJson(instance.fontWeight),
      'fontSize': instance.fontSize,
      'color': const ColorConverter().toJson(instance.color),
      'backgroundColor':
          const ColorConverter().toJson(instance.backgroundColor),
      'fontFamily': instance.fontFamily,
      'alignment': const AlignmentConverter().toJson(instance.alignment),
      'margin': const EdgeInsetsConverter().toJson(instance.margin),
      'padding': const EdgeInsetsConverter().toJson(instance.padding),
      'borderRadius':
          const BorderRadiusConverter().toJson(instance.borderRadius),
    };
