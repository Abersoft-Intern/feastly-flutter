import 'package:freezed_annotation/freezed_annotation.dart';

part 'group.freezed.dart';
part 'group.g.dart';

@freezed
class Group with _$Group {
  const factory Group({
    required int id,
    required String name,
    required String code,
    @JsonKey(name: 'is_creator') required bool isCreator,
    required List<Member> members,
  }) = _Group;

  factory Group.fromJson(Map<String, Object?> json) => _$GroupFromJson(json);
}

@freezed
class Member with _$Member {
  const factory Member({
    required int id,
    required String name,
    @JsonKey(name: 'profile_picture') required String? profilePicture,
    required String? blurhash,
    @JsonKey(name: 'is_creator') required bool isCreator,
  }) = _Member;

  factory Member.fromJson(Map<String, Object?> json) => _$MemberFromJson(json);
}
