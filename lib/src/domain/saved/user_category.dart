import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_category.freezed.dart';
part 'user_category.g.dart';

@freezed
class UserCategory with _$UserCategory {
  const factory UserCategory({
    required int id,
    required String name,
  }) = _UserCategory;

  factory UserCategory.fromJson(Map<String, Object?> json) =>
      _$UserCategoryFromJson(json);
}
