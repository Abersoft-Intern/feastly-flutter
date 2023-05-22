// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_category.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserCategory _$UserCategoryFromJson(Map<String, dynamic> json) {
  return _UserCategory.fromJson(json);
}

/// @nodoc
mixin _$UserCategory {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCategoryCopyWith<UserCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCategoryCopyWith<$Res> {
  factory $UserCategoryCopyWith(
          UserCategory value, $Res Function(UserCategory) then) =
      _$UserCategoryCopyWithImpl<$Res, UserCategory>;
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class _$UserCategoryCopyWithImpl<$Res, $Val extends UserCategory>
    implements $UserCategoryCopyWith<$Res> {
  _$UserCategoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserCategoryCopyWith<$Res>
    implements $UserCategoryCopyWith<$Res> {
  factory _$$_UserCategoryCopyWith(
          _$_UserCategory value, $Res Function(_$_UserCategory) then) =
      __$$_UserCategoryCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class __$$_UserCategoryCopyWithImpl<$Res>
    extends _$UserCategoryCopyWithImpl<$Res, _$_UserCategory>
    implements _$$_UserCategoryCopyWith<$Res> {
  __$$_UserCategoryCopyWithImpl(
      _$_UserCategory _value, $Res Function(_$_UserCategory) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$_UserCategory(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserCategory implements _UserCategory {
  const _$_UserCategory({required this.id, required this.name});

  factory _$_UserCategory.fromJson(Map<String, dynamic> json) =>
      _$$_UserCategoryFromJson(json);

  @override
  final int id;
  @override
  final String name;

  @override
  String toString() {
    return 'UserCategory(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserCategory &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserCategoryCopyWith<_$_UserCategory> get copyWith =>
      __$$_UserCategoryCopyWithImpl<_$_UserCategory>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserCategoryToJson(
      this,
    );
  }
}

abstract class _UserCategory implements UserCategory {
  const factory _UserCategory(
      {required final int id, required final String name}) = _$_UserCategory;

  factory _UserCategory.fromJson(Map<String, dynamic> json) =
      _$_UserCategory.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_UserCategoryCopyWith<_$_UserCategory> get copyWith =>
      throw _privateConstructorUsedError;
}
