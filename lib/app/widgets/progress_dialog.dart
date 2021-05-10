import 'package:flutter/material.dart';

class ProgressDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: const Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
