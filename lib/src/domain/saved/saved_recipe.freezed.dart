// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'saved_recipe.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SavedRecipe _$SavedRecipeFromJson(Map<String, dynamic> json) {
  return _SavedRecipe.fromJson(json);
}

/// @nodoc
mixin _$SavedRecipe {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'recipe_id')
  int get recipeId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get rating => throw _privateConstructorUsedError;
  String get thumbnail => throw _privateConstructorUsedError;
  @JsonKey(name: 'cook_time')
  int get cookTime => throw _privateConstructorUsedError;
  String get blurhash => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SavedRecipeCopyWith<SavedRecipe> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SavedRecipeCopyWith<$Res> {
  factory $SavedRecipeCopyWith(
          SavedRecipe value, $Res Function(SavedRecipe) then) =
      _$SavedRecipeCopyWithImpl<$Res, SavedRecipe>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'recipe_id') int recipeId,
      String name,
      int rating,
      String thumbnail,
      @JsonKey(name: 'cook_time') int cookTime,
      String blurhash});
}

/// @nodoc
class _$SavedRecipeCopyWithImpl<$Res, $Val extends SavedRecipe>
    implements $SavedRecipeCopyWith<$Res> {
  _$SavedRecipeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? recipeId = null,
    Object? name = null,
    Object? rating = null,
    Object? thumbnail = null,
    Object? cookTime = null,
    Object? blurhash = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      recipeId: null == recipeId
          ? _value.recipeId
          : recipeId // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int,
      thumbnail: null == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String,
      cookTime: null == cookTime
          ? _value.cookTime
          : cookTime // ignore: cast_nullable_to_non_nullable
              as int,
      blurhash: null == blurhash
          ? _value.blurhash
          : blurhash // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SavedRecipeCopyWith<$Res>
    implements $SavedRecipeCopyWith<$Res> {
  factory _$$_SavedRecipeCopyWith(
          _$_SavedRecipe value, $Res Function(_$_SavedRecipe) then) =
      __$$_SavedRecipeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'recipe_id') int recipeId,
      String name,
      int rating,
      String thumbnail,
      @JsonKey(name: 'cook_time') int cookTime,
      String blurhash});
}

/// @nodoc
class __$$_SavedRecipeCopyWithImpl<$Res>
    extends _$SavedRecipeCopyWithImpl<$Res, _$_SavedRecipe>
    implements _$$_SavedRecipeCopyWith<$Res> {
  __$$_SavedRecipeCopyWithImpl(
      _$_SavedRecipe _value, $Res Function(_$_SavedRecipe) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? recipeId = null,
    Object? name = null,
    Object? rating = null,
    Object? thumbnail = null,
    Object? cookTime = null,
    Object? blurhash = null,
  }) {
    return _then(_$_SavedRecipe(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      recipeId: null == recipeId
          ? _value.recipeId
          : recipeId // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int,
      thumbnail: null == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String,
      cookTime: null == cookTime
          ? _value.cookTime
          : cookTime // ignore: cast_nullable_to_non_nullable
              as int,
      blurhash: null == blurhash
          ? _value.blurhash
          : blurhash // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SavedRecipe implements _SavedRecipe {
  const _$_SavedRecipe(
      {required this.id,
      @JsonKey(name: 'recipe_id') required this.recipeId,
      required this.name,
      required this.rating,
      required this.thumbnail,
      @JsonKey(name: 'cook_time') required this.cookTime,
      required this.blurhash});

  factory _$_SavedRecipe.fromJson(Map<String, dynamic> json) =>
      _$$_SavedRecipeFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'recipe_id')
  final int recipeId;
  @override
  final String name;
  @override
  final int rating;
  @override
  final String thumbnail;
  @override
  @JsonKey(name: 'cook_time')
  final int cookTime;
  @override
  final String blurhash;

  @override
  String toString() {
    return 'SavedRecipe(id: $id, recipeId: $recipeId, name: $name, rating: $rating, thumbnail: $thumbnail, cookTime: $cookTime, blurhash: $blurhash)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SavedRecipe &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.recipeId, recipeId) ||
                other.recipeId == recipeId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.thumbnail, thumbnail) ||
                other.thumbnail == thumbnail) &&
            (identical(other.cookTime, cookTime) ||
                other.cookTime == cookTime) &&
            (identical(other.blurhash, blurhash) ||
                other.blurhash == blurhash));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, recipeId, name, rating, thumbnail, cookTime, blurhash);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SavedRecipeCopyWith<_$_SavedRecipe> get copyWith =>
      __$$_SavedRecipeCopyWithImpl<_$_SavedRecipe>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SavedRecipeToJson(
      this,
    );
  }
}

abstract class _SavedRecipe implements SavedRecipe {
  const factory _SavedRecipe(
      {required final int id,
      @JsonKey(name: 'recipe_id') required final int recipeId,
      required final String name,
      required final int rating,
      required final String thumbnail,
      @JsonKey(name: 'cook_time') required final int cookTime,
      required final String blurhash}) = _$_SavedRecipe;

  factory _SavedRecipe.fromJson(Map<String, dynamic> json) =
      _$_SavedRecipe.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'recipe_id')
  int get recipeId;
  @override
  String get name;
  @override
  int get rating;
  @override
  String get thumbnail;
  @override
  @JsonKey(name: 'cook_time')
  int get cookTime;
  @override
  String get blurhash;
  @override
  @JsonKey(ignore: true)
  _$$_SavedRecipeCopyWith<_$_SavedRecipe> get copyWith =>
      throw _privateConstructorUsedError;
}
