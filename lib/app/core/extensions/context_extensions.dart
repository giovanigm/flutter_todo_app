import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:todo_app/app/widgets/progress_dialog.dart';

extension ContextX on BuildContext {
  Future<void> showProgressDialog() => showDialog(
        context: this,
        barrierDismissible: false,
        builder: (context) => ProgressDialog(),
      );

  void showSnackBar({
    required Widget content,
    SnackBarBehavior behavior = SnackBarBehavior.fixed,
  }) =>
      ScaffoldMessenger.of(this).showSnackBar(
        SnackBar(
          content: content,
          behavior: behavior,
        ),
      );
}
