import 'package:feastly/src/common_widgets/buttons/action_button.dart';
import 'package:feastly/src/constants/app_sizes.dart';
import 'package:feastly/src/constants/icons/feastly_icons.dart';
import 'package:feastly/src/constants/theme/custom_color.dart';
import 'package:feastly/src/presentation/discover/discover/restaurants/discover_restaurants_card.dart';
import 'package:feastly/src/presentation/discover/discover/restaurants/discover_restaurants_controller.dart';
import 'package:feastly/src/presentation/discover/discover/restaurants/discover_restaurants_none.dart';
import 'package:flutter/material.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DiscoverRestaurants extends ConsumerStatefulWidget {
  const DiscoverRestaurants({super.key});

  @override
  ConsumerState<DiscoverRestaurants> createState() =>
      _DiscoverRestaurantsState();
}

class _DiscoverRestaurantsState extends ConsumerState<DiscoverRestaurants> {
  var _isCardEmpty = false;
  var _isEndReached = false;
  final _cardController = CardSwiperController();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorTheme = theme.extension<CustomColor>()!;

    ref.listen(discoverRestaurantsControllerProvider, (_, state) {
      // Check for error operation
      if (state.hasError && !state.isLoading) {
        _cardController.undo();
        setState(() => _isEndReached = false);
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            duration: const Duration(seconds: 2),
            content: Text(state.error.toString()),
          ),
        );

        // We need to check if all cards has been swiped or not and all the operation should be succeed
      } else if (!state.isLoading) {
        if (_isEndReached) setState(() => _isCardEmpty = true);
      }
    });

    return Column(
      children: [
        Expanded(
          child: !_isEndReached
              ? CardSwiper(
                  controller: _cardController,
                  backCardOffset: 0,
                  isLoop: false,
                  padding: EdgeInsets.zero,
                  cardsCount: 2,
                  onSwipe: (index, __, direction) {
                    if (direction == CardSwiperDirection.right) {
                      ref
                          .read(discoverRestaurantsControllerProvider.notifier)
                          .likeRestaurant(1);
                    } else if (direction == CardSwiperDirection.left) {
                      ref
                          .read(discoverRestaurantsControllerProvider.notifier)
                          .skipRestaurant(1);
                    }
                    return true;
                  },
                  onEnd: () {
                    setState(() {
                      _isEndReached = true;
                    });
                  },
                  cardBuilder: (_, index) => const DiscoverRestaurantsCard())
              : const DiscoverRestaurantsNone(),
        ),
        gapH28,
        Padding(
          padding: EdgeInsets.symmetric(horizontal: Sizes.p36.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ActionButton(
                icon: Icon(
                  FeastlyIcon.icon_delete,
                  color: colorTheme.white,
                  size: Sizes.p24.h,
                ),
                onTap: () {
                  if (!_isCardEmpty) _cardController.swipeLeft();
                },
                variant: ActionButtonVariant.danger,
              ),
              gapW8,
              ActionButton(
                icon: Icon(
                  FeastlyIcon.icon_go_back,
                  color: colorTheme.yellow,
                  size: Sizes.p24.h,
                ),
                variant: ActionButtonVariant.neutral,
                onTap: () {},
              ),
              gapW8,
              ActionButton(
                icon: Icon(
                  FeastlyIcon.heart_alt,
                  size: Sizes.p24.h,
                  color: colorTheme.white,
                ),
                onTap: () {
                  if (!_isCardEmpty) _cardController.swipeRight();
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
