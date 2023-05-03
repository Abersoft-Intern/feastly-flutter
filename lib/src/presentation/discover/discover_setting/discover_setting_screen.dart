import 'package:feastly/src/common_widgets/buttons/back_arrow_button.dart';
import 'package:feastly/src/common_widgets/custom_chip.dart';
import 'package:feastly/src/constants/app_sizes.dart';
import 'package:feastly/src/constants/theme/custom_text_theme.dart';
import 'package:feastly/src/localization/string_hardcoded.dart';
import 'package:feastly/src/presentation/discover/discover_setting/discover_setting_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DiscoverSettingScreen extends StatefulWidget {
  const DiscoverSettingScreen({super.key});
  @override
  State<DiscoverSettingScreen> createState() => _DiscoverSettingState();
}

class _DiscoverSettingState extends State<DiscoverSettingScreen> {
  String _selectedGroup = 'groupSwipe';

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.extension<CustomTextTheme>()!;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: Sizes.p28.h,
                  left: Sizes.p28.h,
                  right: Sizes.p28.h,
                  bottom: Sizes.p8.h,
                ),
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
              DiscoverSettingTile(
                label: 'Solo Swipe',
                value: 'soloSwipe',
                selectedValue: _selectedGroup,
                onChanged: (value) {
                  setState(() {
                    _selectedGroup = value!;
                  });
                },
              ),
              DiscoverSettingTile(
                label: 'Group Swipe',
                value: 'groupSwipe',
                selectedValue: _selectedGroup,
                onChanged: (value) {
                  setState(() {
                    _selectedGroup = value!;
                  });
                },
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
                    Wrap(
                      spacing: Sizes.p8,
                      runSpacing: Sizes.p8,
                      children: const [
                        CustomChip(label: 'American Food', selected: true),
                        CustomChip(label: 'Brunch'),
                      ],
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
