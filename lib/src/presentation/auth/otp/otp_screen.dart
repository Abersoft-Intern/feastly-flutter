import 'package:feastly/src/common_widgets/buttons/button.dart';
import 'package:feastly/src/constants/app_sizes.dart';
import 'package:feastly/src/constants/icons/feastly_icons.dart';
import 'package:feastly/src/constants/theme/custom_text_theme.dart';
import 'package:feastly/src/localization/string_hardcoded.dart';
import 'package:feastly/src/navigation/route_name.dart';
import 'package:feastly/src/presentation/auth/otp/otp_controller.dart';
import 'package:feastly/src/presentation/auth/otp/otp_texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
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
                  size: 26.0,
                  color: theme.primaryColor,
                ),
              ),
               const SizedBox(
                height: 99.67,
              ),
              OtpTexts(isWrong: state.hasError),
               const SizedBox(
                height: 95.0,
              ),
              Pinput(
                controller: _pinController,
                length: 4,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                defaultPinTheme: const PinTheme(
                  height: 60.0,
                  width: 60.0,
                  textStyle: TextStyle(
                    fontFamily: 'nunito' ,
                    fontSize: 32.0,
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border(
                      bottom: BorderSide(
                          width: 2.0 , color: Color.fromARGB(255, 156, 152, 152)),
                    ),
                  ),
                ),
                showCursor: true,
              ),
               const SizedBox(
                height: 44.0,
              ),
              SizedBox(
                width: double.infinity,
                child: Text(
                  'I did not get a verification code.'.hardcoded,
                  style: theme.extension<CustomTextTheme>()!.body16Regular!,
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: Center(
                  child: TextButton(
                    child: Text(
                      'Send again.'.hardcoded,
                      style: theme.extension<CustomTextTheme>()!.body16Bold,
                    ),
                    onPressed: () {},
                  ),
                ),
              ),
              gapH24,
              gapH32,
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
