import 'package:feastly/src/data/preference_repository.dart';
import 'package:feastly/src/domain/swiping_preference/swiping_category.dart';
import 'package:feastly/src/presentation/discover/discover_setting/preference_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'categories_state.g.dart';

@riverpod
class CategoriesState extends _$CategoriesState {
  @override
  FutureOr<List<SwipingCategory>> build() {
    final preferenceRepository = ref.watch(preferenceRepositoryProvider);
    ref.watch(preferenceStateProvider);
    return preferenceRepository.getCategories();
  }

  void changeList(List<SwipingCategory> categories) {
    state = AsyncData(categories);
  }
}
