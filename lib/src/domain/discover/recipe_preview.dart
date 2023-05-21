import 'package:freezed_annotation/freezed_annotation.dart';

part 'recipe_preview.freezed.dart';
part 'recipe_preview.g.dart';

@freezed
class RecipePreview with _$RecipePreview {
  const factory RecipePreview({
    required int id,
    required String name,
    required int rating,
    required String thumbnail,
    @JsonKey(name: 'cook_time') required int cookTime,
    required String blurhash,
  }) = _RecipePreview;

  factory RecipePreview.fromJson(Map<String, Object?> json) =>
      _$RecipePreviewFromJson(json);
}
