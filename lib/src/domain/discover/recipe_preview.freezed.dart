// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recipe_preview.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RecipePreview _$RecipePreviewFromJson(Map<String, dynamic> json) {
  return _RecipePreview.fromJson(json);
}

/// @nodoc
mixin _$RecipePreview {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get rating => throw _privateConstructorUsedError;
  @JsonKey(name: 'image_url')
  String get imageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'cook_time')
  int get cookTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RecipePreviewCopyWith<RecipePreview> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecipePreviewCopyWith<$Res> {
  factory $RecipePreviewCopyWith(
          RecipePreview value, $Res Function(RecipePreview) then) =
      _$RecipePreviewCopyWithImpl<$Res, RecipePreview>;
  @useResult
  $Res call(
      {int id,
      String name,
      int rating,
      @JsonKey(name: 'image_url') String imageUrl,
      @JsonKey(name: 'cook_time') int cookTime});
}

/// @nodoc
class _$RecipePreviewCopyWithImpl<$Res, $Val extends RecipePreview>
    implements $RecipePreviewCopyWith<$Res> {
  _$RecipePreviewCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? rating = null,
    Object? imageUrl = null,
    Object? cookTime = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      cookTime: null == cookTime
          ? _value.cookTime
          : cookTime // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RecipePreviewCopyWith<$Res>
    implements $RecipePreviewCopyWith<$Res> {
  factory _$$_RecipePreviewCopyWith(
          _$_RecipePreview value, $Res Function(_$_RecipePreview) then) =
      __$$_RecipePreviewCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      int rating,
      @JsonKey(name: 'image_url') String imageUrl,
      @JsonKey(name: 'cook_time') int cookTime});
}

/// @nodoc
class __$$_RecipePreviewCopyWithImpl<$Res>
    extends _$RecipePreviewCopyWithImpl<$Res, _$_RecipePreview>
    implements _$$_RecipePreviewCopyWith<$Res> {
  __$$_RecipePreviewCopyWithImpl(
      _$_RecipePreview _value, $Res Function(_$_RecipePreview) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? rating = null,
    Object? imageUrl = null,
    Object? cookTime = null,
  }) {
    return _then(_$_RecipePreview(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      cookTime: null == cookTime
          ? _value.cookTime
          : cookTime // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RecipePreview implements _RecipePreview {
  const _$_RecipePreview(
      {required this.id,
      required this.name,
      required this.rating,
      @JsonKey(name: 'image_url') required this.imageUrl,
      @JsonKey(name: 'cook_time') required this.cookTime});

  factory _$_RecipePreview.fromJson(Map<String, dynamic> json) =>
      _$$_RecipePreviewFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final int rating;
  @override
  @JsonKey(name: 'image_url')
  final String imageUrl;
  @override
  @JsonKey(name: 'cook_time')
  final int cookTime;

  @override
  String toString() {
    return 'RecipePreview(id: $id, name: $name, rating: $rating, imageUrl: $imageUrl, cookTime: $cookTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RecipePreview &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.cookTime, cookTime) ||
                other.cookTime == cookTime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, rating, imageUrl, cookTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RecipePreviewCopyWith<_$_RecipePreview> get copyWith =>
      __$$_RecipePreviewCopyWithImpl<_$_RecipePreview>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RecipePreviewToJson(
      this,
    );
  }
}

abstract class _RecipePreview implements RecipePreview {
  const factory _RecipePreview(
          {required final int id,
          required final String name,
          required final int rating,
          @JsonKey(name: 'image_url') required final String imageUrl,
          @JsonKey(name: 'cook_time') required final int cookTime}) =
      _$_RecipePreview;

  factory _RecipePreview.fromJson(Map<String, dynamic> json) =
      _$_RecipePreview.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  int get rating;
  @override
  @JsonKey(name: 'image_url')
  String get imageUrl;
  @override
  @JsonKey(name: 'cook_time')
  int get cookTime;
  @override
  @JsonKey(ignore: true)
  _$$_RecipePreviewCopyWith<_$_RecipePreview> get copyWith =>
      throw _privateConstructorUsedError;
}
