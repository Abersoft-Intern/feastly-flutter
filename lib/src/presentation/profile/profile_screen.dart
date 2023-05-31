import 'package:feastly/src/common_widgets/buttons/button.dart';
import 'package:feastly/src/constants/app_sizes.dart';
import 'package:feastly/src/constants/icons/feastly_icons.dart';
import 'package:feastly/src/constants/theme/custom_color.dart';
import 'package:feastly/src/constants/theme/custom_text_theme.dart';
import 'package:feastly/src/localization/string_hardcoded.dart';
import 'package:feastly/src/presentation/profile/profile_buttons.dart';
import 'package:feastly/src/presentation/profile/profile_controller.dart';
import 'package:feastly/src/presentation/profile/profile_tile_list.dart';
import 'package:feastly/src/utils/show_custom_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class ProfileScreen extends ConsumerWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final textTheme = theme.extension<CustomTextTheme>()!;
    final colorTheme = theme.extension<CustomColor>()!;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              gapH24,
              Stack(
                children: [
                  SizedBox(
                    width: double.infinity,
                    child: Text(
                      'Johan hellberg'.hardcoded,
                      style: textTheme.h3,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Positioned(
                    right: Sizes.p28.h,
                    top: 0,
                    bottom: 0,
                    child: InkResponse(
                      onTap: () {},
                      radius: 25.0,
                      child: Icon(
                        FeastlyIcon.icon_edit,
                        color: theme.primaryColor,
                      ),
                    ),
                  )
                ],
              ),
              gapH36,
              Align(
                child: Container(
                  width: 80.0.h,
                  height: 80.0.h,
                  decoration: BoxDecoration(
                    color: colorTheme.unselectedNav,
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                  child: Center(
                    child: Icon(
                      FeastlyIcon.icon_user,
                      size: 50.0.h,
                      color: colorTheme.profileColor,
                    ),
                  ),
                ),
              ),
              gapH36,
              Align(
                child: InkWell(
                  borderRadius: BorderRadius.circular(50.0),
                  onTap: () {
                    showCustomBottomSheet(
                      context,
                      title: 'Choose image source',
                      subtitle:
                          'Choose the image source from where you want to upload image.',
                      customButtons: Column(
                        children: [
                          gapH20,
                          Button(
                            text: 'Open Camera'.hardcoded,
                            onTap: () {
                              ref
                                  .read(profileControllerProvider.notifier)
                                  .getPhotoCamera();
                            },
                          ),
                          gapH32,
                          Button(
                            onTap: () {
                              ref
                                  .read(profileControllerProvider.notifier)
                                  .getPhotoGallery();
                            },
                            text: 'Choose from gallery'.hardcoded,
                            variant: ButtonVariant.inverted,
                          ),
                          gapH32,
                          Button(
                            onTap: () {
                              context.pop();
                            },
                            text: 'Close'.hardcoded,
                            variant: ButtonVariant.danger,
                          ),
                          gapH16
                        ],
                      ),
                    );
                  },
                  child: Ink(
                    decoration: BoxDecoration(
                      color: theme.primaryColor,
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                    padding: EdgeInsets.symmetric(
                      vertical: Sizes.p4.h,
                      horizontal: Sizes.p12.h,
                    ),
                    child: Text(
                      'Add image',
                      style: textTheme.body16Bold!
                          .copyWith(color: colorTheme.white),
                    ),
                  ),
                ),
              ),
              gapH36,
              Divider(
                color: colorTheme.lightGrey,
                endIndent: Sizes.p28.h,
                indent: Sizes.p28.h,
              ),
              gapH4,
              const ProfileTileList(),
              gapH28,
              const ProfileButtons(),
              gapH28,
              Align(
                alignment: Alignment.center,
                child: Text(
                  'Version 1.0'.hardcoded,
                  style: textTheme.body16Regular,
                ),
              ),
              gapH28
            ],
          ),
        ),
      ),
    );
  }
}
