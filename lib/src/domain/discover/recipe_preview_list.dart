import 'package:feastly/src/domain/discover/recipe_preview.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'recipe_preview_list.freezed.dart';
part 'recipe_preview_list.g.dart';

@freezed
class RecipePreviewList with _$RecipePreviewList {
  const factory RecipePreviewList({
    required int statusCode,
    required String message,
    @JsonKey(name: 'result') required List<RecipePreview?> recipes,
  }) = _RecipePreviewList;

  factory RecipePreviewList.fromJson(Map<String, Object?> json) =>
      _$RecipePreviewListFromJson(json);
}
