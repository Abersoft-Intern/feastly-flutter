// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'swiping_category.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SwipingCategory _$SwipingCategoryFromJson(Map<String, dynamic> json) {
  return _SwipingCategory.fromJson(json);
}

/// @nodoc
mixin _$SwipingCategory {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  bool get active => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SwipingCategoryCopyWith<SwipingCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SwipingCategoryCopyWith<$Res> {
  factory $SwipingCategoryCopyWith(
          SwipingCategory value, $Res Function(SwipingCategory) then) =
      _$SwipingCategoryCopyWithImpl<$Res, SwipingCategory>;
  @useResult
  $Res call({int id, String name, bool active});
}

/// @nodoc
class _$SwipingCategoryCopyWithImpl<$Res, $Val extends SwipingCategory>
    implements $SwipingCategoryCopyWith<$Res> {
  _$SwipingCategoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? active = null,
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
      active: null == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SwipingCategoryCopyWith<$Res>
    implements $SwipingCategoryCopyWith<$Res> {
  factory _$$_SwipingCategoryCopyWith(
          _$_SwipingCategory value, $Res Function(_$_SwipingCategory) then) =
      __$$_SwipingCategoryCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, bool active});
}

/// @nodoc
class __$$_SwipingCategoryCopyWithImpl<$Res>
    extends _$SwipingCategoryCopyWithImpl<$Res, _$_SwipingCategory>
    implements _$$_SwipingCategoryCopyWith<$Res> {
  __$$_SwipingCategoryCopyWithImpl(
      _$_SwipingCategory _value, $Res Function(_$_SwipingCategory) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? active = null,
  }) {
    return _then(_$_SwipingCategory(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      active: null == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SwipingCategory implements _SwipingCategory {
  const _$_SwipingCategory(
      {required this.id, required this.name, required this.active});

  factory _$_SwipingCategory.fromJson(Map<String, dynamic> json) =>
      _$$_SwipingCategoryFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final bool active;

  @override
  String toString() {
    return 'SwipingCategory(id: $id, name: $name, active: $active)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SwipingCategory &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.active, active) || other.active == active));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, active);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SwipingCategoryCopyWith<_$_SwipingCategory> get copyWith =>
      __$$_SwipingCategoryCopyWithImpl<_$_SwipingCategory>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SwipingCategoryToJson(
      this,
    );
  }
}

abstract class _SwipingCategory implements SwipingCategory {
  const factory _SwipingCategory(
      {required final int id,
      required final String name,
      required final bool active}) = _$_SwipingCategory;

  factory _SwipingCategory.fromJson(Map<String, dynamic> json) =
      _$_SwipingCategory.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  bool get active;
  @override
  @JsonKey(ignore: true)
  _$$_SwipingCategoryCopyWith<_$_SwipingCategory> get copyWith =>
      throw _privateConstructorUsedError;
}
