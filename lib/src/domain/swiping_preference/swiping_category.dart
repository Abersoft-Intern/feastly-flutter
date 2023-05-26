import 'package:freezed_annotation/freezed_annotation.dart';

part 'swiping_category.freezed.dart';
part 'swiping_category.g.dart';

@freezed
class SwipingCategory with _$SwipingCategory {
  const factory SwipingCategory({
    required int id,
    required String name,
    required bool active,
  }) = _SwipingCategory;

  factory SwipingCategory.fromJson(Map<String, Object?> json) =>
      _$SwipingCategoryFromJson(json);
}
