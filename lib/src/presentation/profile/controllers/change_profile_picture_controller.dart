import 'dart:io';

import 'package:feastly/src/data/auth_repository.dart';
import 'package:flutter/material.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'change_profile_picture_controller.g.dart';

@riverpod
class ChangeProfilePictureController extends _$ChangeProfilePictureController {
  final _imagePicker = ImagePicker();

  @override
  FutureOr<void> build() {}

  Future<void> getPhoto(ImageSource imageSource) async {
    final authRepository = ref.watch(authRepositoryProvider);

    try {
      state = const AsyncLoading();
      final file = await _imagePicker.pickImage(source: imageSource);
      if (file == null) {
        state = const AsyncData(null);
        return;
      }

      final croppedFile = await _cropImage(file);
      if (croppedFile != null) {
        final processedFile = File(croppedFile.path);
        await authRepository.updateProfilePicture(processedFile);
      }
      state = const AsyncData(null);
    } catch (e) {
      state = AsyncError('An error occured while changing profile picture',
          StackTrace.current);
    }
  }

  Future<CroppedFile?> _cropImage(XFile image) {
    return ImageCropper().cropImage(
      sourcePath: image.path,
      aspectRatioPresets: [
        CropAspectRatioPreset.square,
      ],
      uiSettings: [
        AndroidUiSettings(
          hideBottomControls: true,
          statusBarColor: Colors.black,
          toolbarTitle: 'Crop Image',
          initAspectRatio: CropAspectRatioPreset.square,
        ),
      ],
    );
  }
}
