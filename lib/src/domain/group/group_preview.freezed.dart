// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'group_preview.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GroupPreview _$GroupPreviewFromJson(Map<String, dynamic> json) {
  return _GroupPreview.fromJson(json);
}

/// @nodoc
mixin _$GroupPreview {
  bool get active => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'creator_photo')
  String? get creatorPhoto => throw _privateConstructorUsedError;
  @JsonKey(name: 'creator_name')
  String get creatorName => throw _privateConstructorUsedError;
  String? get blurhash => throw _privateConstructorUsedError;
  @JsonKey(name: 'members_count')
  int get membersCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GroupPreviewCopyWith<GroupPreview> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroupPreviewCopyWith<$Res> {
  factory $GroupPreviewCopyWith(
          GroupPreview value, $Res Function(GroupPreview) then) =
      _$GroupPreviewCopyWithImpl<$Res, GroupPreview>;
  @useResult
  $Res call(
      {bool active,
      int id,
      String name,
      @JsonKey(name: 'creator_photo') String? creatorPhoto,
      @JsonKey(name: 'creator_name') String creatorName,
      String? blurhash,
      @JsonKey(name: 'members_count') int membersCount});
}

/// @nodoc
class _$GroupPreviewCopyWithImpl<$Res, $Val extends GroupPreview>
    implements $GroupPreviewCopyWith<$Res> {
  _$GroupPreviewCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? active = null,
    Object? id = null,
    Object? name = null,
    Object? creatorPhoto = freezed,
    Object? creatorName = null,
    Object? blurhash = freezed,
    Object? membersCount = null,
  }) {
    return _then(_value.copyWith(
      active: null == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      creatorPhoto: freezed == creatorPhoto
          ? _value.creatorPhoto
          : creatorPhoto // ignore: cast_nullable_to_non_nullable
              as String?,
      creatorName: null == creatorName
          ? _value.creatorName
          : creatorName // ignore: cast_nullable_to_non_nullable
              as String,
      blurhash: freezed == blurhash
          ? _value.blurhash
          : blurhash // ignore: cast_nullable_to_non_nullable
              as String?,
      membersCount: null == membersCount
          ? _value.membersCount
          : membersCount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GroupPreviewCopyWith<$Res>
    implements $GroupPreviewCopyWith<$Res> {
  factory _$$_GroupPreviewCopyWith(
          _$_GroupPreview value, $Res Function(_$_GroupPreview) then) =
      __$$_GroupPreviewCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool active,
      int id,
      String name,
      @JsonKey(name: 'creator_photo') String? creatorPhoto,
      @JsonKey(name: 'creator_name') String creatorName,
      String? blurhash,
      @JsonKey(name: 'members_count') int membersCount});
}

/// @nodoc
class __$$_GroupPreviewCopyWithImpl<$Res>
    extends _$GroupPreviewCopyWithImpl<$Res, _$_GroupPreview>
    implements _$$_GroupPreviewCopyWith<$Res> {
  __$$_GroupPreviewCopyWithImpl(
      _$_GroupPreview _value, $Res Function(_$_GroupPreview) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? active = null,
    Object? id = null,
    Object? name = null,
    Object? creatorPhoto = freezed,
    Object? creatorName = null,
    Object? blurhash = freezed,
    Object? membersCount = null,
  }) {
    return _then(_$_GroupPreview(
      active: null == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      creatorPhoto: freezed == creatorPhoto
          ? _value.creatorPhoto
          : creatorPhoto // ignore: cast_nullable_to_non_nullable
              as String?,
      creatorName: null == creatorName
          ? _value.creatorName
          : creatorName // ignore: cast_nullable_to_non_nullable
              as String,
      blurhash: freezed == blurhash
          ? _value.blurhash
          : blurhash // ignore: cast_nullable_to_non_nullable
              as String?,
      membersCount: null == membersCount
          ? _value.membersCount
          : membersCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GroupPreview implements _GroupPreview {
  const _$_GroupPreview(
      {this.active = false,
      required this.id,
      required this.name,
      @JsonKey(name: 'creator_photo') required this.creatorPhoto,
      @JsonKey(name: 'creator_name') required this.creatorName,
      required this.blurhash,
      @JsonKey(name: 'members_count') required this.membersCount});

  factory _$_GroupPreview.fromJson(Map<String, dynamic> json) =>
      _$$_GroupPreviewFromJson(json);

  @override
  @JsonKey()
  final bool active;
  @override
  final int id;
  @override
  final String name;
  @override
  @JsonKey(name: 'creator_photo')
  final String? creatorPhoto;
  @override
  @JsonKey(name: 'creator_name')
  final String creatorName;
  @override
  final String? blurhash;
  @override
  @JsonKey(name: 'members_count')
  final int membersCount;

  @override
  String toString() {
    return 'GroupPreview(active: $active, id: $id, name: $name, creatorPhoto: $creatorPhoto, creatorName: $creatorName, blurhash: $blurhash, membersCount: $membersCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GroupPreview &&
            (identical(other.active, active) || other.active == active) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.creatorPhoto, creatorPhoto) ||
                other.creatorPhoto == creatorPhoto) &&
            (identical(other.creatorName, creatorName) ||
                other.creatorName == creatorName) &&
            (identical(other.blurhash, blurhash) ||
                other.blurhash == blurhash) &&
            (identical(other.membersCount, membersCount) ||
                other.membersCount == membersCount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, active, id, name, creatorPhoto,
      creatorName, blurhash, membersCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GroupPreviewCopyWith<_$_GroupPreview> get copyWith =>
      __$$_GroupPreviewCopyWithImpl<_$_GroupPreview>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GroupPreviewToJson(
      this,
    );
  }
}

abstract class _GroupPreview implements GroupPreview {
  const factory _GroupPreview(
          {final bool active,
          required final int id,
          required final String name,
          @JsonKey(name: 'creator_photo') required final String? creatorPhoto,
          @JsonKey(name: 'creator_name') required final String creatorName,
          required final String? blurhash,
          @JsonKey(name: 'members_count') required final int membersCount}) =
      _$_GroupPreview;

  factory _GroupPreview.fromJson(Map<String, dynamic> json) =
      _$_GroupPreview.fromJson;

  @override
  bool get active;
  @override
  int get id;
  @override
  String get name;
  @override
  @JsonKey(name: 'creator_photo')
  String? get creatorPhoto;
  @override
  @JsonKey(name: 'creator_name')
  String get creatorName;
  @override
  String? get blurhash;
  @override
  @JsonKey(name: 'members_count')
  int get membersCount;
  @override
  @JsonKey(ignore: true)
  _$$_GroupPreviewCopyWith<_$_GroupPreview> get copyWith =>
      throw _privateConstructorUsedError;
}
