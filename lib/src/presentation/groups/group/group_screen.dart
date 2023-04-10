import 'package:feastly/src/common_widgets/buttons/back_arrow_button.dart';
import 'package:feastly/src/common_widgets/buttons/button.dart';
import 'package:feastly/src/constants/app_sizes.dart';
import 'package:feastly/src/constants/icons/feastly_icons.dart';
import 'package:feastly/src/constants/theme/custom_color.dart';
import 'package:feastly/src/constants/theme/custom_text_theme.dart';
import 'package:feastly/src/localization/string_hardcoded.dart';
import 'package:feastly/src/presentation/groups/group/member_avatar.dart';
import 'package:feastly/src/utils/show_custom_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:share_plus/share_plus.dart';

class GroupScreen extends StatelessWidget {
  const GroupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.extension<CustomTextTheme>()!;
    final colorTheme = theme.extension<CustomColor>()!;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(Sizes.p28.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    const BackArrowButton(),
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        'Family',
                        style: textTheme.h3,
                      ),
                    )
                  ],
                ),
                gapH16,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '159 525 369',
                      style: textTheme.h2,
                    ),
                    gapW16,
                    GestureDetector(
                      onTap: () {},
                      child: Icon(
                        FeastlyIcon.button_copy,
                        color: theme.primaryColor,
                        size: 20.0.h,
                      ),
                    )
                  ],
                ),
                gapH12,
                SizedBox(
                  width: double.infinity,
                  child: Text(
                    'This is the code for this Group, others can use this code to join this Group.',
                    style: textTheme.body16Regular,
                    textAlign: TextAlign.center,
                  ),
                ),
                gapH24,
                Divider(
                  color: colorTheme.lightGrey,
                  endIndent: 34,
                  indent: 34,
                ),
                gapH16,
                Text(
                  'Group Location'.hardcoded,
                  style: textTheme.h3,
                ),
                gapH24,
                InkWell(
                  onTap: () => {},
                  borderRadius: BorderRadius.circular(50.0),
                  child: Ink(
                    height: 50.0.h,
                    padding: EdgeInsets.symmetric(horizontal: Sizes.p24.h),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50.0),
                      border:
                          Border.all(color: colorTheme.lightGrey!, width: 2.0),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          FeastlyIcon.icon_distance,
                          color: theme.primaryColor,
                          size: 24.0.h,
                        ),
                        const SizedBox(
                          width: 16.0,
                        ),
                        Text(
                          'Current Location',
                          style: textTheme.body16Regular,
                        ),
                        const Spacer(),
                        Icon(
                          FeastlyIcon.button_arrow_right,
                          color: theme.primaryColor,
                          size: 24.0.h,
                        ),
                      ],
                    ),
                  ),
                ),
                // Text(
                //   'Stockholm'.hardcoded,
                //   style: textTheme.body16Bold,
                // ),
                gapH28,
                SizedBox(
                  width: double.infinity,
                  child: Text(
                    'The group leader can choose the location of where you swipe.'
                        .hardcoded,
                    style: textTheme.body16Regular,
                    textAlign: TextAlign.center,
                  ),
                ),
                gapH48,
                Text(
                  'Group members'.hardcoded,
                  style: textTheme.h3,
                ),
                gapH28,
                ListView(
                  primary: false,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  children: const [
                    MemberAvatar(
                      isDeleteable: true,
                      isActive: true,
                    ),
                    MemberAvatar(
                      isDeleteable: true,
                    ),
                    MemberAvatar(
                      isDeleteable: true,
                    )
                  ],
                ),
                gapH36,
                Button(
                  text: 'Invite friends'.hardcoded,
                  onTap: () {
                    Share.share('Join me on feastly');
                  },
                ),
                gapH24,
                Button(
                  text: 'Leave group'.hardcoded,
                  variant: ButtonVariant.danger,
                  onTap: () {
                    showCustomBottomSheet(context,
                        title: 'Disband Group'.hardcoded,
                        subtitle: 'Are you sure you want to disband this group?'
                            .hardcoded);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
