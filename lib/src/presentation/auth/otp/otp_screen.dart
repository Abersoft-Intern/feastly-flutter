import 'package:feastly/src/common_widgets/buttons/button.dart';
import 'package:feastly/src/constants/app_sizes.dart';
import 'package:feastly/src/constants/icons/feastly_icons.dart';
import 'package:feastly/src/constants/theme/custom_color.dart';
import 'package:feastly/src/constants/theme/custom_text_theme.dart';
import 'package:feastly/src/localization/string_hardcoded.dart';
import 'package:feastly/src/navigation/route_name.dart';
import 'package:feastly/src/presentation/auth/otp/otp_controller.dart';
import 'package:feastly/src/presentation/auth/otp/otp_texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:pinput/pinput.dart';

class OtpScreen extends ConsumerStatefulWidget {
  const OtpScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _OtpScreenState();
}

class _OtpScreenState extends ConsumerState<OtpScreen> {
  final _pinController = TextEditingController();

  String get pin => _pinController.text;

  @override
  void dispose() {
    _pinController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.extension<CustomTextTheme>()!;
    final colorTheme = theme.extension<CustomColor>()!;

    final state = ref.watch(otpControllerProvider);
    final controller = ref.read(otpControllerProvider.notifier);

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(Sizes.p24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                borderRadius: const BorderRadius.all(Radius.circular(50.0)),
                onTap: () {
                  context.pop();
                },
                child: Icon(
                  FeastlyIcon.arrow_back_green,
                  size: Sizes.backIconSize,
                  color: theme.primaryColor,
                ),
              ),
              SizedBox(
                height: 99.0.h,
              ),
              OtpTexts(isWrong: state.hasError),
              SizedBox(
                height: 95.0.h,
              ),
              Pinput(
                controller: _pinController,
                length: 4,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                defaultPinTheme: PinTheme(
                  height: 60.0,
                  width: 60.0,
                  textStyle: textTheme.h2!,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border(
                      bottom: BorderSide(
                        width: 2.0,
                        color: colorTheme.mediumGrey!,
                      ),
                    ),
                  ),
                ),
                showCursor: true,
              ),
              gapH40,
              SizedBox(
                width: double.infinity,
                child: Text(
                  'I did not get a verification code.'.hardcoded,
                  style: textTheme.body16Regular!,
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: Center(
                  child: TextButton(
                    child: Text(
                      'Send again.'.hardcoded,
                      style: textTheme.body16Bold,
                    ),
                    onPressed: () {},
                  ),
                ),
              ),
              SizedBox(
                height: 76.0.h,
              ),
              Button(
                text: 'Continue'.hardcoded,
                onTap: () async {
                  if (await controller.submit(pin)) {
                    if (context.mounted) {
                      context.pushNamed(RouteName.otpSuccess.name);
                    }
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
