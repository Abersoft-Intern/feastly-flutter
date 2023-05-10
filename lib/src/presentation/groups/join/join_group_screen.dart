import 'package:feastly/src/common_widgets/buttons/back_arrow_button.dart';
import 'package:feastly/src/common_widgets/buttons/button.dart';
import 'package:feastly/src/common_widgets/input.dart';
import 'package:feastly/src/constants/app_sizes.dart';
import 'package:feastly/src/constants/icons/feastly_icons.dart';
import 'package:feastly/src/constants/theme/custom_text_theme.dart';
import 'package:feastly/src/localization/string_hardcoded.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class JoinGroupScreen extends StatelessWidget {
  const JoinGroupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.extension<CustomTextTheme>()!;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const ClampingScrollPhysics(),
          padding: EdgeInsets.all(Sizes.p28.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const BackArrowButton(),
              gapH16,
              Text(
                'Enter code'.hardcoded,
                style: textTheme.h3,
              ),
              gapH8,
              Text(
                'Enter the code of the group you want to join and start swiping together.'
                    .hardcoded,
                style: textTheme.body16Regular,
              ),
              SizedBox(
                height: 164.0.h,
              ),
              Input(
                keyboardType: TextInputType.number,
                icon: Icon(
                  FeastlyIcon.icon_code,
                  color: theme.primaryColor,
                ),
              ),
              SizedBox(
                height: 124.0.h,
              ),
              Button(
                text: 'Join group'.hardcoded,
                onTap: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
