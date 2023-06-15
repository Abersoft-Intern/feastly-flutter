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
class UserWithOtpToken with _$UserWithOtpToken {
  const factory UserWithOtpToken({
    @JsonKey(name: 'otp_token') required String otpToken,
    required User user,
  }) = _UserWithOtpToken;

  factory UserWithOtpToken.fromJson(Map<String, Object?> json) =>
      _$UserWithOtpTokenFromJson(json);
}

@freezed
class UserWithJwt with _$UserWithJwt {
  const factory UserWithJwt({
    @JsonKey(name: 'jwt') required String token,
    required User user,
  }) = _UserWithJwt;

  factory UserWithJwt.fromJson(Map<String, Object?> json) =>
      _$UserWithJwtFromJson(json);
}
