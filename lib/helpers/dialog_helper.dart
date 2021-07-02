import 'package:flutter/material.dart';
import 'package:flutter_custom_dialog/dialogs/confirmation_dialog.dart';

class DialogHelper {
  static doExit(context) {
    return showDialog(context: context, builder: (context) {
      return ConfirmationDialog();
    });
  }
}
