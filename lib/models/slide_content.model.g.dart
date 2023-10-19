// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'slide_content.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TextSlideContentImpl _$$TextSlideContentImplFromJson(
        Map<String, dynamic> json) =>
    _$TextSlideContentImpl(
      id: json['id'] as String,
      type: $enumDecodeNullable(_$SlideContentTypeEnumMap, json['type']) ??
          SlideContentType.text,
      alignment: json['alignment'] == null
          ? Alignment.center
          : const AlignmentConverter()
              .fromJson(json['alignment'] as Map<String, dynamic>),
      margin: json['margin'] == null
          ? EdgeInsets.zero
          : const EdgeInsetsConverter()
              .fromJson(json['margin'] as Map<String, dynamic>),
      padding: json['padding'] == null
          ? EdgeInsets.zero
          : const EdgeInsetsConverter()
              .fromJson(json['padding'] as Map<String, dynamic>),
      color: json['color'] == null
          ? Colors.black
          : const ColorConverter().fromJson(json['color'] as String),
      backgroundColor: json['backgroundColor'] == null
          ? Colors.transparent
          : const ColorConverter().fromJson(json['backgroundColor'] as String),
      rotationDegrees: json['rotationDegrees'] as int? ?? 0,
      fontWeight: json['fontWeight'] == null
          ? FontWeight.normal
          : const FontWeightConverter().fromJson(json['fontWeight'] as int),
      borderRadius: json['borderRadius'] == null
          ? BorderRadius.zero
          : const BorderRadiusConverter()
              .fromJson(json['borderRadius'] as Map<String, dynamic>),
      backgroundImageUrl: json['backgroundImageUrl'] as String?,
      fontSize: (json['fontSize'] as num).toDouble(),
      text: json['text'] as String,
    );

Map<String, dynamic> _$$TextSlideContentImplToJson(
        _$TextSlideContentImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': _$SlideContentTypeEnumMap[instance.type]!,
      'alignment': const AlignmentConverter().toJson(instance.alignment),
      'margin': const EdgeInsetsConverter().toJson(instance.margin),
      'padding': const EdgeInsetsConverter().toJson(instance.padding),
      'color': const ColorConverter().toJson(instance.color),
      'backgroundColor':
          const ColorConverter().toJson(instance.backgroundColor),
      'rotationDegrees': instance.rotationDegrees,
      'fontWeight': const FontWeightConverter().toJson(instance.fontWeight),
      'borderRadius':
          const BorderRadiusConverter().toJson(instance.borderRadius),
      'backgroundImageUrl': instance.backgroundImageUrl,
      'fontSize': instance.fontSize,
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
      id: json['id'] as String,
      type: $enumDecodeNullable(_$SlideContentTypeEnumMap, json['type']) ??
          SlideContentType.list,
      alignment: json['alignment'] == null
          ? Alignment.center
          : const AlignmentConverter()
              .fromJson(json['alignment'] as Map<String, dynamic>),
      margin: json['margin'] == null
          ? EdgeInsets.zero
          : const EdgeInsetsConverter()
              .fromJson(json['margin'] as Map<String, dynamic>),
      padding: json['padding'] == null
          ? EdgeInsets.zero
          : const EdgeInsetsConverter()
              .fromJson(json['padding'] as Map<String, dynamic>),
      color: json['color'] == null
          ? Colors.black
          : const ColorConverter().fromJson(json['color'] as String),
      backgroundColor: json['backgroundColor'] == null
          ? Colors.transparent
          : const ColorConverter().fromJson(json['backgroundColor'] as String),
      rotationDegrees: json['rotationDegrees'] as int? ?? 0,
      borderRadius: json['borderRadius'] == null
          ? BorderRadius.zero
          : const BorderRadiusConverter()
              .fromJson(json['borderRadius'] as Map<String, dynamic>),
      backgroundImageUrl: json['backgroundImageUrl'] as String?,
      hasDividers: json['hasDividers'] as bool? ?? false,
      items: (json['items'] as List<dynamic>).map((e) => e as String).toList(),
      fontSize: (json['fontSize'] as num).toDouble(),
    );

Map<String, dynamic> _$$ListSlideContentImplToJson(
        _$ListSlideContentImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': _$SlideContentTypeEnumMap[instance.type]!,
      'alignment': const AlignmentConverter().toJson(instance.alignment),
      'margin': const EdgeInsetsConverter().toJson(instance.margin),
      'padding': const EdgeInsetsConverter().toJson(instance.padding),
      'color': const ColorConverter().toJson(instance.color),
      'backgroundColor':
          const ColorConverter().toJson(instance.backgroundColor),
      'rotationDegrees': instance.rotationDegrees,
      'borderRadius':
          const BorderRadiusConverter().toJson(instance.borderRadius),
      'backgroundImageUrl': instance.backgroundImageUrl,
      'hasDividers': instance.hasDividers,
      'items': instance.items,
      'fontSize': instance.fontSize,
    };

_$ImageSlideContentImpl _$$ImageSlideContentImplFromJson(
        Map<String, dynamic> json) =>
    _$ImageSlideContentImpl(
      id: json['id'] as String,
      type: $enumDecodeNullable(_$SlideContentTypeEnumMap, json['type']) ??
          SlideContentType.image,
      alignment: json['alignment'] == null
          ? Alignment.center
          : const AlignmentConverter()
              .fromJson(json['alignment'] as Map<String, dynamic>),
      margin: json['margin'] == null
          ? EdgeInsets.zero
          : const EdgeInsetsConverter()
              .fromJson(json['margin'] as Map<String, dynamic>),
      padding: json['padding'] == null
          ? EdgeInsets.zero
          : const EdgeInsetsConverter()
              .fromJson(json['padding'] as Map<String, dynamic>),
      color: json['color'] == null
          ? Colors.black
          : const ColorConverter().fromJson(json['color'] as String),
      backgroundColor: json['backgroundColor'] == null
          ? Colors.transparent
          : const ColorConverter().fromJson(json['backgroundColor'] as String),
      rotationDegrees: json['rotationDegrees'] as int? ?? 0,
      borderRadius: json['borderRadius'] == null
          ? BorderRadius.zero
          : const BorderRadiusConverter()
              .fromJson(json['borderRadius'] as Map<String, dynamic>),
      backgroundImageUrl: json['backgroundImageUrl'] as String?,
      imageUrl: json['imageUrl'] as String,
      size: json['size'] == null
          ? const Offset(100, 100)
          : const OffsetConverter()
              .fromJson(json['size'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ImageSlideContentImplToJson(
        _$ImageSlideContentImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': _$SlideContentTypeEnumMap[instance.type]!,
      'alignment': const AlignmentConverter().toJson(instance.alignment),
      'margin': const EdgeInsetsConverter().toJson(instance.margin),
      'padding': const EdgeInsetsConverter().toJson(instance.padding),
      'color': const ColorConverter().toJson(instance.color),
      'backgroundColor':
          const ColorConverter().toJson(instance.backgroundColor),
      'rotationDegrees': instance.rotationDegrees,
      'borderRadius':
          const BorderRadiusConverter().toJson(instance.borderRadius),
      'backgroundImageUrl': instance.backgroundImageUrl,
      'imageUrl': instance.imageUrl,
      'size': const OffsetConverter().toJson(instance.size),
    };
