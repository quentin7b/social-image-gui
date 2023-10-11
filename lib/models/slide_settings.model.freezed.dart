// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'slide_settings.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SlideSettings _$SlideSettingsFromJson(Map<String, dynamic> json) {
  return _SlideSettings.fromJson(json);
}

/// @nodoc
mixin _$SlideSettings {
  @OffsetConverter()
  Offset get size => throw _privateConstructorUsedError;
  @ColorConverter()
  Color get backgroundColor => throw _privateConstructorUsedError;
  @EdgeInsetsConverter()
  EdgeInsets get margin => throw _privateConstructorUsedError;
  @EdgeInsetsConverter()
  EdgeInsets get padding => throw _privateConstructorUsedError;
  @BorderRadiusConverter()
  BorderRadius get borderRadius => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SlideSettingsCopyWith<SlideSettings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SlideSettingsCopyWith<$Res> {
  factory $SlideSettingsCopyWith(
          SlideSettings value, $Res Function(SlideSettings) then) =
      _$SlideSettingsCopyWithImpl<$Res, SlideSettings>;
  @useResult
  $Res call(
      {@OffsetConverter() Offset size,
      @ColorConverter() Color backgroundColor,
      @EdgeInsetsConverter() EdgeInsets margin,
      @EdgeInsetsConverter() EdgeInsets padding,
      @BorderRadiusConverter() BorderRadius borderRadius});
}

/// @nodoc
class _$SlideSettingsCopyWithImpl<$Res, $Val extends SlideSettings>
    implements $SlideSettingsCopyWith<$Res> {
  _$SlideSettingsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? size = null,
    Object? backgroundColor = null,
    Object? margin = null,
    Object? padding = null,
    Object? borderRadius = null,
  }) {
    return _then(_value.copyWith(
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as Offset,
      backgroundColor: null == backgroundColor
          ? _value.backgroundColor
          : backgroundColor // ignore: cast_nullable_to_non_nullable
              as Color,
      margin: null == margin
          ? _value.margin
          : margin // ignore: cast_nullable_to_non_nullable
              as EdgeInsets,
      padding: null == padding
          ? _value.padding
          : padding // ignore: cast_nullable_to_non_nullable
              as EdgeInsets,
      borderRadius: null == borderRadius
          ? _value.borderRadius
          : borderRadius // ignore: cast_nullable_to_non_nullable
              as BorderRadius,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SlideSettingsImplCopyWith<$Res>
    implements $SlideSettingsCopyWith<$Res> {
  factory _$$SlideSettingsImplCopyWith(
          _$SlideSettingsImpl value, $Res Function(_$SlideSettingsImpl) then) =
      __$$SlideSettingsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@OffsetConverter() Offset size,
      @ColorConverter() Color backgroundColor,
      @EdgeInsetsConverter() EdgeInsets margin,
      @EdgeInsetsConverter() EdgeInsets padding,
      @BorderRadiusConverter() BorderRadius borderRadius});
}

/// @nodoc
class __$$SlideSettingsImplCopyWithImpl<$Res>
    extends _$SlideSettingsCopyWithImpl<$Res, _$SlideSettingsImpl>
    implements _$$SlideSettingsImplCopyWith<$Res> {
  __$$SlideSettingsImplCopyWithImpl(
      _$SlideSettingsImpl _value, $Res Function(_$SlideSettingsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? size = null,
    Object? backgroundColor = null,
    Object? margin = null,
    Object? padding = null,
    Object? borderRadius = null,
  }) {
    return _then(_$SlideSettingsImpl(
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as Offset,
      backgroundColor: null == backgroundColor
          ? _value.backgroundColor
          : backgroundColor // ignore: cast_nullable_to_non_nullable
              as Color,
      margin: null == margin
          ? _value.margin
          : margin // ignore: cast_nullable_to_non_nullable
              as EdgeInsets,
      padding: null == padding
          ? _value.padding
          : padding // ignore: cast_nullable_to_non_nullable
              as EdgeInsets,
      borderRadius: null == borderRadius
          ? _value.borderRadius
          : borderRadius // ignore: cast_nullable_to_non_nullable
              as BorderRadius,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SlideSettingsImpl implements _SlideSettings {
  const _$SlideSettingsImpl(
      {@OffsetConverter() required this.size,
      @ColorConverter() this.backgroundColor = Colors.transparent,
      @EdgeInsetsConverter() this.margin = EdgeInsets.zero,
      @EdgeInsetsConverter() this.padding = EdgeInsets.zero,
      @BorderRadiusConverter() this.borderRadius = BorderRadius.zero});

  factory _$SlideSettingsImpl.fromJson(Map<String, dynamic> json) =>
      _$$SlideSettingsImplFromJson(json);

  @override
  @OffsetConverter()
  final Offset size;
  @override
  @JsonKey()
  @ColorConverter()
  final Color backgroundColor;
  @override
  @JsonKey()
  @EdgeInsetsConverter()
  final EdgeInsets margin;
  @override
  @JsonKey()
  @EdgeInsetsConverter()
  final EdgeInsets padding;
  @override
  @JsonKey()
  @BorderRadiusConverter()
  final BorderRadius borderRadius;

  @override
  String toString() {
    return 'SlideSettings(size: $size, backgroundColor: $backgroundColor, margin: $margin, padding: $padding, borderRadius: $borderRadius)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SlideSettingsImpl &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.backgroundColor, backgroundColor) ||
                other.backgroundColor == backgroundColor) &&
            (identical(other.margin, margin) || other.margin == margin) &&
            (identical(other.padding, padding) || other.padding == padding) &&
            (identical(other.borderRadius, borderRadius) ||
                other.borderRadius == borderRadius));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, size, backgroundColor, margin, padding, borderRadius);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SlideSettingsImplCopyWith<_$SlideSettingsImpl> get copyWith =>
      __$$SlideSettingsImplCopyWithImpl<_$SlideSettingsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SlideSettingsImplToJson(
      this,
    );
  }
}

abstract class _SlideSettings implements SlideSettings {
  const factory _SlideSettings(
          {@OffsetConverter() required final Offset size,
          @ColorConverter() final Color backgroundColor,
          @EdgeInsetsConverter() final EdgeInsets margin,
          @EdgeInsetsConverter() final EdgeInsets padding,
          @BorderRadiusConverter() final BorderRadius borderRadius}) =
      _$SlideSettingsImpl;

  factory _SlideSettings.fromJson(Map<String, dynamic> json) =
      _$SlideSettingsImpl.fromJson;

  @override
  @OffsetConverter()
  Offset get size;
  @override
  @ColorConverter()
  Color get backgroundColor;
  @override
  @EdgeInsetsConverter()
  EdgeInsets get margin;
  @override
  @EdgeInsetsConverter()
  EdgeInsets get padding;
  @override
  @BorderRadiusConverter()
  BorderRadius get borderRadius;
  @override
  @JsonKey(ignore: true)
  _$$SlideSettingsImplCopyWith<_$SlideSettingsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
