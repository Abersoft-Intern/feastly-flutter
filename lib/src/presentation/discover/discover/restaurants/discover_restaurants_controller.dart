import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'discover_restaurants_controller.g.dart';

@riverpod
class DiscoverRestaurantsController extends _$DiscoverRestaurantsController {
  @override
  FutureOr<void> build() {}

  Future<void> likeRestaurant(int restaurantId) async {
    state = const AsyncValue.loading();
    await Future.delayed(const Duration(seconds: 2));
    state = const AsyncValue.data(null);
  }

  Future<void> skipRestaurant(int restaurantId) async {
    state = const AsyncValue.loading();
    await Future.delayed(const Duration(seconds: 2));
    state = AsyncValue.error('Somethin wrong la', StackTrace.current);
  }
}
