import 'package:feastly/src/common_widgets/buttons/back_arrow_button.dart';
import 'package:feastly/src/common_widgets/custom_chip.dart';
import 'package:feastly/src/constants/app_sizes.dart';
import 'package:feastly/src/constants/theme/custom_text_theme.dart';
import 'package:feastly/src/localization/string_hardcoded.dart';
import 'package:feastly/src/presentation/discover/discover_setting/categories_controller.dart';
import 'package:feastly/src/presentation/discover/discover_setting/categories_state.dart';
import 'package:feastly/src/presentation/discover/discover_setting/discover_setting_tile.dart';
import 'package:feastly/src/presentation/discover/discover_setting/preference_controller.dart';
import 'package:feastly/src/presentation/discover/discover_setting/preference_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DiscoverSettingScreen extends ConsumerStatefulWidget {
  const DiscoverSettingScreen({super.key});
  @override
  ConsumerState<DiscoverSettingScreen> createState() => _DiscoverSettingState();
}

class _DiscoverSettingState extends ConsumerState<DiscoverSettingScreen> {
  int _activeGroup = 0;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.extension<CustomTextTheme>()!;

    final preferenceState = ref.watch(preferenceStateProvider);
    final preferenceController = ref.watch(preferenceControllerProvider);

    final categoriesState = ref.watch(categoriesStateProvider);

    ref.listen(preferenceStateProvider, (_, state) {
      if (!state.isLoading && !state.hasError) {
        setState(() {
          _activeGroup =
              state.asData!.value.firstWhere((group) => group.active).id;
        });
      }
    });

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.all(Sizes.p28.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const BackArrowButton(),
                    gapH12,
                    Text(
                      'Select swiping group'.hardcoded,
                      style: textTheme.h3,
                    ),
                    gapH12,
                    Text(
                      'Select what group you are swiping as, or if you are swiping solo. If your swiping as a group it is only the Group Creator that can select the categories.'
                          .hardcoded,
                      style: textTheme.body16Regular,
                    ),
                  ],
                ),
              ),
              Stack(
                children: [
                  preferenceState.when(
                    data: (preferences) => ListView.builder(
                      primary: false,
                      shrinkWrap: true,
                      itemCount: preferences.length,
                      itemBuilder: (context, index) => DiscoverSettingTile(
                        label: preferences[index].name,
                        value: preferences[index].id.toString(),
                        selectedValue: _activeGroup.toString(),
                        onTap: (value) {
                          if (int.parse(value) != _activeGroup) {
                            ref
                                .read(preferenceControllerProvider.notifier)
                                .changeSwipingPreference(int.parse(value));
                          }
                        },
                      ),
                    ),
                    error: (e, st) => Text(e.toString()),
                    loading: () =>
                        const Center(child: CircularProgressIndicator()),
                  ),
                  if (preferenceController.isLoading)
                    Positioned.fill(
                      child: Container(
                        color: const Color.fromARGB(158, 255, 255, 255),
                        child: Center(
                          child: SizedBox.square(
                            dimension: 35.0.h,
                            child: const CircularProgressIndicator(),
                          ),
                        ),
                      ),
                    ),
                ],
              ),
              gapH24,
              Padding(
                padding: const EdgeInsets.all(Sizes.p24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Categories'.hardcoded,
                      style: textTheme.h3,
                    ),
                    gapH8,
                    Text(
                      'Here you can choose what categories of food or restaurants you want to see.'
                          .hardcoded,
                      style: textTheme.body16Regular,
                    ),
                    gapH24,
                    categoriesState.when(
                      data: (categories) => Wrap(
                        spacing: Sizes.p8,
                        runSpacing: Sizes.p8,
                        children: categories
                            .map(
                              (category) => CustomChip(
                                id: category.id,
                                label: category.name,
                                selected: category.active,
                                onTap: () {
                                  ref
                                      .read(
                                          categoriesControllerProvider.notifier)
                                      .changeCategory(category.id);
                                },
                              ),
                            )
                            .toList(),
                      ),
                      error: (error, st) => const Text('Error'),
                      loading: () => const Center(
                        child: CircularProgressIndicator(),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
