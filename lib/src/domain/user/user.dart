import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  const factory User({
    required int id,
    required String email,
    required bool confirmed,
    required String? name,
    @JsonKey(name: 'profile_picture') required String? profilePicture,
    required String? blurhash,
  }) = _User;

  factory User.fromJson(Map<String, Object?> json) => _$UserFromJson(json);
}

@freezed
class UserWithToken with _$UserWithToken {
  const factory UserWithToken({
    required String jwt,
    required User user,
  }) = _UserWithToken;

  factory UserWithToken.fromJson(Map<String, Object?> json) =>
      _$UserWithTokenFromJson(json);
}
