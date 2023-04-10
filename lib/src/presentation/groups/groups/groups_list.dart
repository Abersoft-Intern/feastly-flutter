import 'package:feastly/src/constants/app_sizes.dart';
import 'package:feastly/src/constants/icons/feastly_icons.dart';
import 'package:feastly/src/constants/theme/custom_color.dart';
import 'package:feastly/src/constants/theme/custom_text_theme.dart';
import 'package:feastly/src/localization/string_hardcoded.dart';
import 'package:feastly/src/presentation/groups/groups_avatar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GroupsList extends StatelessWidget {
  const GroupsList({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorTheme = theme.extension<CustomColor>()!;
    final textTheme = theme.extension<CustomTextTheme>()!;
    return SizedBox(
      height: 70.0.h,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          gapW16,
          SizedBox(
            width: 80.0.h,
            child: InkResponse(
              radius: 40.0,
              onTap: () {},
              child: Column(
                children: [
                  Expanded(
                    child: Center(
                      child: Ink(
                        width: 42.0.h,
                        height: 42.0.h,
                        decoration: BoxDecoration(
                          color: theme.primaryColor,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Center(
                          child: Icon(
                            FeastlyIcon.uil_plus,
                            size: Sizes.p28.h,
                            color: colorTheme.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Text(
                    'New Group'.hardcoded,
                    style:
                        textTheme.bold12!.copyWith(color: theme.primaryColor),
                  )
                ],
              ),
            ),
          ),
          const GroupsAvatar(
            isActive: true,
          ),
          const GroupsAvatar(),
          const GroupsAvatar(),
        ],
      ),
    );
  }
}
