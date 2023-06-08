import 'package:feastly/src/common_widgets/buttons/button.dart';
import 'package:feastly/src/constants/app_sizes.dart';
import 'package:feastly/src/localization/string_hardcoded.dart';
import 'package:feastly/src/presentation/profile/controllers/change_profile_picture_controller.dart';
import 'package:feastly/src/utils/async_error_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';

class ChangeProfilePictureSheet extends ConsumerWidget {
  const ChangeProfilePictureSheet(this.rootContext, {super.key});

  final BuildContext rootContext;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.watch(changeProfilePictureControllerProvider);

    ref.listen(changeProfilePictureControllerProvider, (_, state) {
      state.showSnackbarOnError(context);
    });
    return Column(
      children: [
        gapH20,
        Button(
          isLoading: controller.isLoading,
          disabled: controller.isLoading,
          text: 'Open Camera'.hardcoded,
          onTap: () {
            ref
                .read(changeProfilePictureControllerProvider.notifier)
                .getPhoto(ImageSource.camera);
          },
        ),
        gapH32,
        Button(
          isLoading: controller.isLoading,
          disabled: controller.isLoading,
          onTap: () async {
            final photoChanged = await ref
                .read(changeProfilePictureControllerProvider.notifier)
                .getPhoto(ImageSource.gallery);

            if (photoChanged) {
              if (context.mounted) {
                context.pop();
                ScaffoldMessenger.of(rootContext).showSnackBar(const SnackBar(
                  duration: Duration(seconds: 2),
                  content: Text('Your profile picture succesfully changed'),
                ));
              }
            }
          },
          text: 'Choose from gallery'.hardcoded,
          variant: ButtonVariant.inverted,
        ),
        gapH32,
        Button(
          isLoading: controller.isLoading,
          disabled: controller.isLoading,
          onTap: () {
            context.pop();
          },
          text: 'Close'.hardcoded,
          variant: ButtonVariant.danger,
        ),
        gapH16
      ],
    );
  }
}
