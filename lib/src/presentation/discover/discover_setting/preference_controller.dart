import 'package:feastly/src/data/preference_repository.dart';
import 'package:feastly/src/presentation/discover/discover_setting/preference_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'preference_controller.g.dart';

@riverpod
class PreferenceController extends _$PreferenceController {
  @override
  FutureOr<void> build() {}

  Future<void> changeSwipingPreference(int groupId) async {
    final repository = ref.watch(preferenceRepositoryProvider);
    try {
      state = const AsyncLoading();
      await repository.changePreference(groupId);

      ref.read(preferenceStateProvider.notifier).changeActiveGroup(groupId);
      state = const AsyncData(null);
    } catch (e) {
      state = AsyncError('Error bro', StackTrace.current);
    }
  }
}
