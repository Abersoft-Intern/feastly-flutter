import 'package:feastly/src/common_widgets/buttons/button.dart';
import 'package:feastly/src/constants/app_sizes.dart';
import 'package:feastly/src/constants/icons/feastly_icons.dart';
import 'package:feastly/src/constants/theme/custom_color.dart';
import 'package:feastly/src/constants/theme/custom_text_theme.dart';
import 'package:feastly/src/localization/string_hardcoded.dart';
import 'package:feastly/src/navigation/auth_state.dart';
import 'package:feastly/src/navigation/route_name.dart';
import 'package:feastly/src/presentation/auth/otp/controllers/otp_controller.dart';
import 'package:feastly/src/presentation/auth/otp/controllers/resend_otp_controller.dart';
import 'package:feastly/src/presentation/auth/otp/otp_texts.dart';
import 'package:feastly/src/utils/async_error_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:pinput/pinput.dart';

class OtpScreen extends ConsumerStatefulWidget {
  const OtpScreen({super.key});

  static const otpKey = Key('otp-input');

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

    final controller = ref.watch(otpControllerProvider);
    final resendOtpController = ref.watch(resendOtpControllerProvider);
    final authState = ref.watch(authStateProvider);

    ref.listen(otpControllerProvider, (_, state) {
      if (!state.isLoading && !state.hasError) {
        if (authState.hasUsername) {
          ref.read(authStateProvider.notifier).persistToStorage();
        }
        context.pushNamed(RouteName.otpSuccess.name);
      }
    });

    ref.listen(resendOtpControllerProvider, (_, state) {
      state.showSnackbarOnError(context);
      state.showSnackbarOnSuccess(
          context, 'New OTP code has been sent to your email');
    });

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const ClampingScrollPhysics(),
          padding: EdgeInsets.all(Sizes.p28.h),
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
              OtpTexts(isWrong: controller.hasError),
              SizedBox(
                height: 95.0.h,
              ),
              Pinput(
                key: OtpScreen.otpKey,
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
                    onPressed: resendOtpController.isLoading
                        ? null
                        : () {
                            ref
                                .read(resendOtpControllerProvider.notifier)
                                .submit();
                          },
                    child: Text(
                      'Send again.'.hardcoded,
                      style: textTheme.body16Bold!.copyWith(
                        color: resendOtpController.isLoading
                            ? colorTheme.mediumGrey
                            : colorTheme.textColor,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 76.0.h,
              ),
              Button(
                text: 'Continue'.hardcoded,
                isLoading: controller.isLoading,
                disabled: controller.isLoading,
                onTap: () async {
                  ref.read(otpControllerProvider.notifier).submit(pin);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
