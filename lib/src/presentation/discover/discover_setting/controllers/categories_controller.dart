import 'package:feastly/src/data/discover_repository.dart';
import 'package:feastly/src/data/preference_repository.dart';
import 'package:feastly/src/presentation/discover/discover_setting/controllers/categories_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'categories_controller.g.dart';

@riverpod
class CategoriesController extends _$CategoriesController {
  @override
  FutureOr<void> build() {}

  Future<void> changeCategory(int id) async {
    final preferenceRepository = ref.watch(preferenceRepositoryProvider);
    try {
      state = const AsyncLoading();
      final updatedCategories = await preferenceRepository.changeCategory(id);
      ref.read(categoriesStateProvider.notifier).changeList(updatedCategories);
      ref.invalidate(discoverRecipesProvider);
      state = const AsyncData(null);
    } catch (e) {
      state = AsyncError('Error bro', StackTrace.current);
    }
  }
}
