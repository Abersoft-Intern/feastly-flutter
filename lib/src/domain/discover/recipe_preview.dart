import 'package:freezed_annotation/freezed_annotation.dart';

part 'recipe_preview.freezed.dart';
part 'recipe_preview.g.dart';

@freezed
class RecipePreview with _$RecipePreview {
  const factory RecipePreview({
    required int id,
    required String name,
    required int rating,
    @JsonKey(name: 'image_url') required String imageUrl,
    @JsonKey(name: 'cook_time') required int cookTime,
  }) = _RecipePreview;

  factory RecipePreview.fromJson(Map<String, Object?> json) =>
      _$RecipePreviewFromJson(json);
}
