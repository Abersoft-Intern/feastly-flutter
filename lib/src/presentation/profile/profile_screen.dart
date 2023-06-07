import 'package:cached_network_image/cached_network_image.dart';
import 'package:feastly/src/constants/app_sizes.dart';
import 'package:feastly/src/constants/icons/feastly_icons.dart';
import 'package:feastly/src/constants/theme/custom_color.dart';
import 'package:feastly/src/constants/theme/custom_text_theme.dart';
import 'package:feastly/src/data/auth_repository.dart';
import 'package:feastly/src/localization/string_hardcoded.dart';
import 'package:feastly/src/presentation/profile/profile_buttons.dart';
import 'package:feastly/src/presentation/profile/profile_tile_list.dart';
import 'package:feastly/src/presentation/profile/prompts/change_name_prompt.dart';
import 'package:feastly/src/presentation/profile/sheets/change_profile_picture_sheet.dart';
import 'package:feastly/src/utils/env.dart';
import 'package:feastly/src/utils/show_custom_bottom_sheet.dart';
import 'package:feastly/src/utils/show_prompt.dart';
import 'package:flutter/material.dart';
import 'package:flutter_blurhash/flutter_blurhash.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileScreen extends ConsumerWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final textTheme = theme.extension<CustomTextTheme>()!;
    final colorTheme = theme.extension<CustomColor>()!;

    final user = ref.watch(profileProvider);

    return Scaffold(
      body: SafeArea(
        child: user.when(
          data: (user) => SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                gapH24,
                Stack(
                  children: [
                    SizedBox(
                      width: double.infinity,
                      child: Text(
                        user.name!,
                        style: textTheme.h3,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Positioned(
                      right: Sizes.p28.h,
                      top: 0,
                      bottom: 0,
                      child: InkResponse(
                        onTap: () {
                          showPrompt(context, child: ChangeNamePrompt(context));
                        },
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
                    child: user.profilePicture == null
                        ? Center(
                            child: Icon(
                              FeastlyIcon.icon_user,
                              size: 50.0.h,
                              color: colorTheme.profileColor,
                            ),
                          )
                        : CachedNetworkImage(
                            fadeInDuration: Duration.zero,
                            fadeOutDuration: Duration.zero,
                            placeholderFadeInDuration: Duration.zero,
                            imageUrl: "${Env.baseUrl}${user.profilePicture}",
                            imageBuilder: (context, imageProvider) {
                              return Container(
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                    image: imageProvider,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              );
                            },
                            placeholder: (context, url) {
                              return ClipOval(
                                child: BlurHash(
                                  hash: user.blurhash!,
                                  imageFit: BoxFit.cover,
                                ),
                              );
                            },
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
                        customButtons: ChangeProfilePictureSheet(context),
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
                        user.profilePicture == null
                            ? 'Add image'
                            : 'Edit image',
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
          error: (error, stackTrace) => Center(
            child: Text(error.toString()),
          ),
          loading: () => const Center(
            child: CircularProgressIndicator(),
          ),
        ),
      ),
    );
  }
}
