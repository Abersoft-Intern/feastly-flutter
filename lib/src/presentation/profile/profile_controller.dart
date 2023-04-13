import 'package:flutter/material.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'profile_controller.g.dart';

@riverpod
class ProfileController extends _$ProfileController {
  final _imagePicker = ImagePicker();

  @override
  void build() {
    return;
  }

  Future<void> getPhotoGallery() async {
    var file = await _imagePicker.pickImage(source: ImageSource.gallery);
    if (file == null) {
      return;
    }

    _cropImage(file);
  }

  Future<void> getPhotoCamera() async {
    var file = await _imagePicker.pickImage(source: ImageSource.camera);
    if (file == null) {
      return;
    }

    _cropImage(file);
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
