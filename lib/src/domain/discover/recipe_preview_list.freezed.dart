// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recipe_preview_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RecipePreviewList _$RecipePreviewListFromJson(Map<String, dynamic> json) {
  return _RecipePreviewList.fromJson(json);
}

/// @nodoc
mixin _$RecipePreviewList {
  int get statusCode => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'result')
  List<RecipePreview?> get recipes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RecipePreviewListCopyWith<RecipePreviewList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecipePreviewListCopyWith<$Res> {
  factory $RecipePreviewListCopyWith(
          RecipePreviewList value, $Res Function(RecipePreviewList) then) =
      _$RecipePreviewListCopyWithImpl<$Res, RecipePreviewList>;
  @useResult
  $Res call(
      {int statusCode,
      String message,
      @JsonKey(name: 'result') List<RecipePreview?> recipes});
}

/// @nodoc
class _$RecipePreviewListCopyWithImpl<$Res, $Val extends RecipePreviewList>
    implements $RecipePreviewListCopyWith<$Res> {
  _$RecipePreviewListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? statusCode = null,
    Object? message = null,
    Object? recipes = null,
  }) {
    return _then(_value.copyWith(
      statusCode: null == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      recipes: null == recipes
          ? _value.recipes
          : recipes // ignore: cast_nullable_to_non_nullable
              as List<RecipePreview?>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RecipePreviewListCopyWith<$Res>
    implements $RecipePreviewListCopyWith<$Res> {
  factory _$$_RecipePreviewListCopyWith(_$_RecipePreviewList value,
          $Res Function(_$_RecipePreviewList) then) =
      __$$_RecipePreviewListCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int statusCode,
      String message,
      @JsonKey(name: 'result') List<RecipePreview?> recipes});
}

/// @nodoc
class __$$_RecipePreviewListCopyWithImpl<$Res>
    extends _$RecipePreviewListCopyWithImpl<$Res, _$_RecipePreviewList>
    implements _$$_RecipePreviewListCopyWith<$Res> {
  __$$_RecipePreviewListCopyWithImpl(
      _$_RecipePreviewList _value, $Res Function(_$_RecipePreviewList) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? statusCode = null,
    Object? message = null,
    Object? recipes = null,
  }) {
    return _then(_$_RecipePreviewList(
      statusCode: null == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      recipes: null == recipes
          ? _value._recipes
          : recipes // ignore: cast_nullable_to_non_nullable
              as List<RecipePreview?>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RecipePreviewList implements _RecipePreviewList {
  const _$_RecipePreviewList(
      {required this.statusCode,
      required this.message,
      @JsonKey(name: 'result') required final List<RecipePreview?> recipes})
      : _recipes = recipes;

  factory _$_RecipePreviewList.fromJson(Map<String, dynamic> json) =>
      _$$_RecipePreviewListFromJson(json);

  @override
  final int statusCode;
  @override
  final String message;
  final List<RecipePreview?> _recipes;
  @override
  @JsonKey(name: 'result')
  List<RecipePreview?> get recipes {
    if (_recipes is EqualUnmodifiableListView) return _recipes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_recipes);
  }

  @override
  String toString() {
    return 'RecipePreviewList(statusCode: $statusCode, message: $message, recipes: $recipes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RecipePreviewList &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._recipes, _recipes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, statusCode, message,
      const DeepCollectionEquality().hash(_recipes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RecipePreviewListCopyWith<_$_RecipePreviewList> get copyWith =>
      __$$_RecipePreviewListCopyWithImpl<_$_RecipePreviewList>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RecipePreviewListToJson(
      this,
    );
  }
}

abstract class _RecipePreviewList implements RecipePreviewList {
  const factory _RecipePreviewList(
      {required final int statusCode,
      required final String message,
      @JsonKey(name: 'result')
          required final List<RecipePreview?> recipes}) = _$_RecipePreviewList;

  factory _RecipePreviewList.fromJson(Map<String, dynamic> json) =
      _$_RecipePreviewList.fromJson;

  @override
  int get statusCode;
  @override
  String get message;
  @override
  @JsonKey(name: 'result')
  List<RecipePreview?> get recipes;
  @override
  @JsonKey(ignore: true)
  _$$_RecipePreviewListCopyWith<_$_RecipePreviewList> get copyWith =>
      throw _privateConstructorUsedError;
}
