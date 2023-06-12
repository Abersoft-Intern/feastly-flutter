import 'package:feastly/src/data/saved_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'add_category_controller.g.dart';

@riverpod
class AddCategoryController extends _$AddCategoryController {
  @override
  FutureOr<void> build() {}

  Future<void> addCategory(String name) async {
    final savedRepository = ref.watch(savedRepositoryProvider);
    try {
      state = const AsyncLoading();
      await savedRepository.addCategory(name);
      state = const AsyncData(null);
    } catch (e) {
      state = AsyncError(
        'An error occured while adding category',
        StackTrace.current,
      );
    }
  }
}
