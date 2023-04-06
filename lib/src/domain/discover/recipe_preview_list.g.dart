// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recipe_preview_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RecipePreviewList _$$_RecipePreviewListFromJson(Map<String, dynamic> json) =>
    _$_RecipePreviewList(
      statusCode: json['statusCode'] as int,
      message: json['message'] as String,
      recipes: (json['result'] as List<dynamic>)
          .map((e) => e == null
              ? null
              : RecipePreview.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_RecipePreviewListToJson(
        _$_RecipePreviewList instance) =>
    <String, dynamic>{
      'statusCode': instance.statusCode,
      'message': instance.message,
      'result': instance.recipes,
    };
