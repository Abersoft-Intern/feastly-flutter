import 'package:feastly/src/data/preference_repository.dart';
import 'package:feastly/src/domain/swiping_preference/swiping_preference.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'preference_state.g.dart';

@riverpod
class PreferenceState extends _$PreferenceState {
  @override
  FutureOr<List<SwipingPreference>> build() {
    final preferenceRepository = ref.watch(preferenceRepositoryProvider);
    return preferenceRepository.getPreferences();
  }

  void changeActiveGroup(int groupId) {
    state = AsyncData(state.value!.map((preference) {
      bool active = false;
      if (preference.id == groupId) {
        active = true;
      }
      return preference.copyWith(active: active);
    }).toList());
  }
}
