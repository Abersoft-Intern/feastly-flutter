import 'package:feastly/src/utils/show_error_alert.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

extension AsyncValueUI on AsyncValue {
  void showAlertDialogOnError(BuildContext context) {
    if (!isLoading && hasError) {
      final message = error.toString();
      showErrorAlert(context, message);
    }
  }

  void showSnackbarOnError(BuildContext context) {
    final message = error.toString();
    if (!isLoading && hasError) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        duration: const Duration(seconds: 2),
        content: Text(message),
      ));
    }
  }
}
