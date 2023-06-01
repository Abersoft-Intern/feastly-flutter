import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  const factory User({
    required int id,
    required String username,
    required String email,
    required String provider,
    required bool confirmed,
    required bool blocked,
    required DateTime createdAt,
    required DateTime updatedAt,
    required String? name,
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
