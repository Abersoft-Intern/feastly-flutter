import 'package:feastly/src/common_widgets/buttons/button.dart';
import 'package:feastly/src/common_widgets/input.dart';
import 'package:feastly/src/constants/app_sizes.dart';
import 'package:feastly/src/constants/icons/feastly_icons.dart';
import 'package:feastly/src/constants/theme/custom_text_theme.dart';
import 'package:feastly/src/localization/string_hardcoded.dart';
import 'package:feastly/src/navigation/route_name.dart';
import 'package:feastly/src/presentation/auth/username/controllers/username_controller.dart';
import 'package:feastly/src/utils/async_error_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:go_router/go_router.dart';

class UsernameScreen extends ConsumerStatefulWidget {
  const UsernameScreen({super.key});

  static const usernameKey = Key('username-input');

  @override
  ConsumerState<UsernameScreen> createState() => _UsernameScreenState();
}

class _UsernameScreenState extends ConsumerState<UsernameScreen> {
  var _name = '';

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final controller = ref.watch(usernameControllerProvider);

    final theme = Theme.of(context);

    ref.listen(usernameControllerProvider, (_, state) {
      state.showAlertDialogOnError(context);
    });

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const ClampingScrollPhysics(),
          padding: const EdgeInsets.all(Sizes.p24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                borderRadius: const BorderRadius.all(
                  Radius.circular(50),
                ),
                child: Icon(
                  FeastlyIcon.arrow_back_green,
                  size: Sizes.backIconSize,
                  color: theme.primaryColor,
                ),
                onTap: () {
                  context.pop();
                },
              ),
              gapH48,
              Text(
                'Enter your name'.hardcoded,
                style: theme.extension<CustomTextTheme>()!.h2!,
              ),
              gapH8,
              Text(
                'Enter your name so that your friends know who you are.'
                    .hardcoded,
                style: theme.extension<CustomTextTheme>()!.body16Regular!,
              ),
              SizedBox(
                height: 104.0.h,
              ),
              Form(
                key: _formKey,
                child: Input(
                  key: UsernameScreen.usernameKey,
                  validator: FormBuilderValidators.compose([
                    FormBuilderValidators.required(),
                    FormBuilderValidators.maxLength(20),
                  ]),
                  onChanged: (value) {
                    setState(() {
                      _name = value;
                    });
                  },
                  keyboardType: TextInputType.name,
                  hintText: 'Username'.hardcoded,
                  icon: Icon(
                    FeastlyIcon.icon_user,
                    color: theme.primaryColor,
                  ),
                ),
              ),
              SizedBox(
                height: 198.0.h,
              ),
              Button(
                isLoading: controller.isLoading,
                disabled: controller.isLoading || _name.trim().isEmpty,
                text: 'Continue'.hardcoded,
                onTap: () async {
                  if (_formKey.currentState!.validate()) {
                    final userUpdated = await ref
                        .read(usernameControllerProvider.notifier)
                        .submit(_name.trim());

                    if (userUpdated) {
                      if (context.mounted) {
                        context.pushNamed(
                          RouteName.onboarding.name,
                        );
                      }
                    }
                  }
                },
                variant: _name.trim().isEmpty ? ButtonVariant.disabled : null,
              ),
              gapH24,
            ],
          ),
        ),
      ),
    );
  }
}
