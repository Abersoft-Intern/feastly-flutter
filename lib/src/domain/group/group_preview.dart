import 'package:freezed_annotation/freezed_annotation.dart';

part 'group_preview.freezed.dart';
part 'group_preview.g.dart';

@freezed
class GroupPreview with _$GroupPreview {
  const factory GroupPreview({
    @Default(false) bool active,
    required int id,
    required String name,
    @JsonKey(name: 'creator_photo') required String? creatorPhoto,
    @JsonKey(name: 'creator_name') required String creatorName,
    required String? blurhash,
    @JsonKey(name: 'members_count') required int membersCount,
  }) = _GroupPreview;

  factory GroupPreview.fromJson(Map<String, Object?> json) =>
      _$GroupPreviewFromJson(json);
}
