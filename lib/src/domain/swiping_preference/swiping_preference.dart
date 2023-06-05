import 'package:freezed_annotation/freezed_annotation.dart';

part 'swiping_preference.freezed.dart';
part 'swiping_preference.g.dart';

@freezed
class SwipingPreference with _$SwipingPreference {
  const factory SwipingPreference({
    required int id,
    required String name,
    required bool active,
    @JsonKey(name: 'is_creator') required bool isCreator,
  }) = _SwipingPreference;

  factory SwipingPreference.fromJson(Map<String, Object?> json) =>
      _$SwipingPreferenceFromJson(json);
}
