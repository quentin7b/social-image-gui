// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'slide.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Slide _$SlideFromJson(Map<String, dynamic> json) {
  return _Slide.fromJson(json);
}

/// @nodoc
mixin _$Slide {
  String get id => throw _privateConstructorUsedError;
  SlideTitle get title => throw _privateConstructorUsedError;
  SlideSettings get settings => throw _privateConstructorUsedError;
  @SlideContentConverter()
  SlideContent? get content => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SlideCopyWith<Slide> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SlideCopyWith<$Res> {
  factory $SlideCopyWith(Slide value, $Res Function(Slide) then) =
      _$SlideCopyWithImpl<$Res, Slide>;
  @useResult
  $Res call(
      {String id,
      SlideTitle title,
      SlideSettings settings,
      @SlideContentConverter() SlideContent? content});

  $SlideTitleCopyWith<$Res> get title;
  $SlideSettingsCopyWith<$Res> get settings;
}

/// @nodoc
class _$SlideCopyWithImpl<$Res, $Val extends Slide>
    implements $SlideCopyWith<$Res> {
  _$SlideCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? settings = null,
    Object? content = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as SlideTitle,
      settings: null == settings
          ? _value.settings
          : settings // ignore: cast_nullable_to_non_nullable
              as SlideSettings,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as SlideContent?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SlideTitleCopyWith<$Res> get title {
    return $SlideTitleCopyWith<$Res>(_value.title, (value) {
      return _then(_value.copyWith(title: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $SlideSettingsCopyWith<$Res> get settings {
    return $SlideSettingsCopyWith<$Res>(_value.settings, (value) {
      return _then(_value.copyWith(settings: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SlideImplCopyWith<$Res> implements $SlideCopyWith<$Res> {
  factory _$$SlideImplCopyWith(
          _$SlideImpl value, $Res Function(_$SlideImpl) then) =
      __$$SlideImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      SlideTitle title,
      SlideSettings settings,
      @SlideContentConverter() SlideContent? content});

  @override
  $SlideTitleCopyWith<$Res> get title;
  @override
  $SlideSettingsCopyWith<$Res> get settings;
}

/// @nodoc
class __$$SlideImplCopyWithImpl<$Res>
    extends _$SlideCopyWithImpl<$Res, _$SlideImpl>
    implements _$$SlideImplCopyWith<$Res> {
  __$$SlideImplCopyWithImpl(
      _$SlideImpl _value, $Res Function(_$SlideImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? settings = null,
    Object? content = freezed,
  }) {
    return _then(_$SlideImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as SlideTitle,
      settings: null == settings
          ? _value.settings
          : settings // ignore: cast_nullable_to_non_nullable
              as SlideSettings,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as SlideContent?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SlideImpl implements _Slide {
  const _$SlideImpl(
      {required this.id,
      this.title = defaultSlideTitle,
      this.settings = defaultSlideSettings,
      @SlideContentConverter() this.content});

  factory _$SlideImpl.fromJson(Map<String, dynamic> json) =>
      _$$SlideImplFromJson(json);

  @override
  final String id;
  @override
  @JsonKey()
  final SlideTitle title;
  @override
  @JsonKey()
  final SlideSettings settings;
  @override
  @SlideContentConverter()
  final SlideContent? content;

  @override
  String toString() {
    return 'Slide(id: $id, title: $title, settings: $settings, content: $content)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SlideImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.settings, settings) ||
                other.settings == settings) &&
            (identical(other.content, content) || other.content == content));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, settings, content);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SlideImplCopyWith<_$SlideImpl> get copyWith =>
      __$$SlideImplCopyWithImpl<_$SlideImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SlideImplToJson(
      this,
    );
  }
}

abstract class _Slide implements Slide {
  const factory _Slide(
      {required final String id,
      final SlideTitle title,
      final SlideSettings settings,
      @SlideContentConverter() final SlideContent? content}) = _$SlideImpl;

  factory _Slide.fromJson(Map<String, dynamic> json) = _$SlideImpl.fromJson;

  @override
  String get id;
  @override
  SlideTitle get title;
  @override
  SlideSettings get settings;
  @override
  @SlideContentConverter()
  SlideContent? get content;
  @override
  @JsonKey(ignore: true)
  _$$SlideImplCopyWith<_$SlideImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
