import 'package:feastly/src/constants/app_sizes.dart';
import 'package:feastly/src/constants/icons/feastly_icons.dart';
import 'package:feastly/src/constants/theme/custom_text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SavedItem extends StatelessWidget {
  const SavedItem({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.extension<CustomTextTheme>()!;
    return InkWell(
      onTap: () {},
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: Sizes.p28.h, vertical: Sizes.p8.h),
        child: Row(
          children: [
            Ink(
              height: 80.0.h,
              width: 66.0.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                image: const DecorationImage(
                  image: AssetImage('assets/images/Cake.png'),
                ),
              ),
            ),
            SizedBox(
              width: Sizes.p24.h,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Raspberry pancakes',
                  style: textTheme.body16Bold,
                ),
                gapH8,
                const Text('rat'),
                gapH8,
                Text(
                  'Raspberry pancakes',
                  style: textTheme.body16Regular,
                ),
              ],
            ),
            const Spacer(),
            Icon(
              FeastlyIcon.button_arrow_right,
              size: Sizes.p24.h,
              color: theme.primaryColor,
            )
          ],
        ),
      ),
    );
  }
}
