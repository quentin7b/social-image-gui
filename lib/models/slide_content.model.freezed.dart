// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'slide_content.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TextSlideContent _$TextSlideContentFromJson(Map<String, dynamic> json) {
  return _TextSlideContent.fromJson(json);
}

/// @nodoc
mixin _$TextSlideContent {
  SlideContentType get type => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TextSlideContentCopyWith<TextSlideContent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TextSlideContentCopyWith<$Res> {
  factory $TextSlideContentCopyWith(
          TextSlideContent value, $Res Function(TextSlideContent) then) =
      _$TextSlideContentCopyWithImpl<$Res, TextSlideContent>;
  @useResult
  $Res call({SlideContentType type, String text});
}

/// @nodoc
class _$TextSlideContentCopyWithImpl<$Res, $Val extends TextSlideContent>
    implements $TextSlideContentCopyWith<$Res> {
  _$TextSlideContentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? text = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as SlideContentType,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TextSlideContentImplCopyWith<$Res>
    implements $TextSlideContentCopyWith<$Res> {
  factory _$$TextSlideContentImplCopyWith(_$TextSlideContentImpl value,
          $Res Function(_$TextSlideContentImpl) then) =
      __$$TextSlideContentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SlideContentType type, String text});
}

/// @nodoc
class __$$TextSlideContentImplCopyWithImpl<$Res>
    extends _$TextSlideContentCopyWithImpl<$Res, _$TextSlideContentImpl>
    implements _$$TextSlideContentImplCopyWith<$Res> {
  __$$TextSlideContentImplCopyWithImpl(_$TextSlideContentImpl _value,
      $Res Function(_$TextSlideContentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? text = null,
  }) {
    return _then(_$TextSlideContentImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as SlideContentType,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TextSlideContentImpl implements _TextSlideContent {
  const _$TextSlideContentImpl(
      {this.type = SlideContentType.text, required this.text});

  factory _$TextSlideContentImpl.fromJson(Map<String, dynamic> json) =>
      _$$TextSlideContentImplFromJson(json);

  @override
  @JsonKey()
  final SlideContentType type;
  @override
  final String text;

  @override
  String toString() {
    return 'TextSlideContent(type: $type, text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TextSlideContentImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.text, text) || other.text == text));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, type, text);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TextSlideContentImplCopyWith<_$TextSlideContentImpl> get copyWith =>
      __$$TextSlideContentImplCopyWithImpl<_$TextSlideContentImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TextSlideContentImplToJson(
      this,
    );
  }
}

abstract class _TextSlideContent implements TextSlideContent, SlideContent {
  const factory _TextSlideContent(
      {final SlideContentType type,
      required final String text}) = _$TextSlideContentImpl;

  factory _TextSlideContent.fromJson(Map<String, dynamic> json) =
      _$TextSlideContentImpl.fromJson;

  @override
  SlideContentType get type;
  @override
  String get text;
  @override
  @JsonKey(ignore: true)
  _$$TextSlideContentImplCopyWith<_$TextSlideContentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ListSlideContent _$ListSlideContentFromJson(Map<String, dynamic> json) {
  return _ListSlideContent.fromJson(json);
}

/// @nodoc
mixin _$ListSlideContent {
  SlideContentType get type => throw _privateConstructorUsedError;
  List<String> get items => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ListSlideContentCopyWith<ListSlideContent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListSlideContentCopyWith<$Res> {
  factory $ListSlideContentCopyWith(
          ListSlideContent value, $Res Function(ListSlideContent) then) =
      _$ListSlideContentCopyWithImpl<$Res, ListSlideContent>;
  @useResult
  $Res call({SlideContentType type, List<String> items});
}

/// @nodoc
class _$ListSlideContentCopyWithImpl<$Res, $Val extends ListSlideContent>
    implements $ListSlideContentCopyWith<$Res> {
  _$ListSlideContentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? items = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as SlideContentType,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ListSlideContentImplCopyWith<$Res>
    implements $ListSlideContentCopyWith<$Res> {
  factory _$$ListSlideContentImplCopyWith(_$ListSlideContentImpl value,
          $Res Function(_$ListSlideContentImpl) then) =
      __$$ListSlideContentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SlideContentType type, List<String> items});
}

/// @nodoc
class __$$ListSlideContentImplCopyWithImpl<$Res>
    extends _$ListSlideContentCopyWithImpl<$Res, _$ListSlideContentImpl>
    implements _$$ListSlideContentImplCopyWith<$Res> {
  __$$ListSlideContentImplCopyWithImpl(_$ListSlideContentImpl _value,
      $Res Function(_$ListSlideContentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? items = null,
  }) {
    return _then(_$ListSlideContentImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as SlideContentType,
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ListSlideContentImpl implements _ListSlideContent {
  const _$ListSlideContentImpl(
      {this.type = SlideContentType.list, required final List<String> items})
      : _items = items;

  factory _$ListSlideContentImpl.fromJson(Map<String, dynamic> json) =>
      _$$ListSlideContentImplFromJson(json);

  @override
  @JsonKey()
  final SlideContentType type;
  final List<String> _items;
  @override
  List<String> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'ListSlideContent(type: $type, items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ListSlideContentImpl &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, type, const DeepCollectionEquality().hash(_items));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ListSlideContentImplCopyWith<_$ListSlideContentImpl> get copyWith =>
      __$$ListSlideContentImplCopyWithImpl<_$ListSlideContentImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ListSlideContentImplToJson(
      this,
    );
  }
}

abstract class _ListSlideContent implements ListSlideContent, SlideContent {
  const factory _ListSlideContent(
      {final SlideContentType type,
      required final List<String> items}) = _$ListSlideContentImpl;

  factory _ListSlideContent.fromJson(Map<String, dynamic> json) =
      _$ListSlideContentImpl.fromJson;

  @override
  SlideContentType get type;
  @override
  List<String> get items;
  @override
  @JsonKey(ignore: true)
  _$$ListSlideContentImplCopyWith<_$ListSlideContentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ImageSlideContent _$ImageSlideContentFromJson(Map<String, dynamic> json) {
  return _ImageSlideContent.fromJson(json);
}

/// @nodoc
mixin _$ImageSlideContent {
  SlideContentType get type => throw _privateConstructorUsedError;
  @Uint8ListConverter()
  Uint8List get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ImageSlideContentCopyWith<ImageSlideContent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageSlideContentCopyWith<$Res> {
  factory $ImageSlideContentCopyWith(
          ImageSlideContent value, $Res Function(ImageSlideContent) then) =
      _$ImageSlideContentCopyWithImpl<$Res, ImageSlideContent>;
  @useResult
  $Res call({SlideContentType type, @Uint8ListConverter() Uint8List image});
}

/// @nodoc
class _$ImageSlideContentCopyWithImpl<$Res, $Val extends ImageSlideContent>
    implements $ImageSlideContentCopyWith<$Res> {
  _$ImageSlideContentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? image = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as SlideContentType,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as Uint8List,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ImageSlideContentImplCopyWith<$Res>
    implements $ImageSlideContentCopyWith<$Res> {
  factory _$$ImageSlideContentImplCopyWith(_$ImageSlideContentImpl value,
          $Res Function(_$ImageSlideContentImpl) then) =
      __$$ImageSlideContentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SlideContentType type, @Uint8ListConverter() Uint8List image});
}

/// @nodoc
class __$$ImageSlideContentImplCopyWithImpl<$Res>
    extends _$ImageSlideContentCopyWithImpl<$Res, _$ImageSlideContentImpl>
    implements _$$ImageSlideContentImplCopyWith<$Res> {
  __$$ImageSlideContentImplCopyWithImpl(_$ImageSlideContentImpl _value,
      $Res Function(_$ImageSlideContentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? image = null,
  }) {
    return _then(_$ImageSlideContentImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as SlideContentType,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as Uint8List,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ImageSlideContentImpl implements _ImageSlideContent {
  const _$ImageSlideContentImpl(
      {this.type = SlideContentType.image,
      @Uint8ListConverter() required this.image});

  factory _$ImageSlideContentImpl.fromJson(Map<String, dynamic> json) =>
      _$$ImageSlideContentImplFromJson(json);

  @override
  @JsonKey()
  final SlideContentType type;
  @override
  @Uint8ListConverter()
  final Uint8List image;

  @override
  String toString() {
    return 'ImageSlideContent(type: $type, image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImageSlideContentImpl &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality().equals(other.image, image));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, type, const DeepCollectionEquality().hash(image));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ImageSlideContentImplCopyWith<_$ImageSlideContentImpl> get copyWith =>
      __$$ImageSlideContentImplCopyWithImpl<_$ImageSlideContentImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ImageSlideContentImplToJson(
      this,
    );
  }
}

abstract class _ImageSlideContent implements ImageSlideContent, SlideContent {
  const factory _ImageSlideContent(
          {final SlideContentType type,
          @Uint8ListConverter() required final Uint8List image}) =
      _$ImageSlideContentImpl;

  factory _ImageSlideContent.fromJson(Map<String, dynamic> json) =
      _$ImageSlideContentImpl.fromJson;

  @override
  SlideContentType get type;
  @override
  @Uint8ListConverter()
  Uint8List get image;
  @override
  @JsonKey(ignore: true)
  _$$ImageSlideContentImplCopyWith<_$ImageSlideContentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
