import 'package:flutter/material.dart';
import 'package:store/core/util/widgets/Loading_dialog.dart';

Future<void> showLoaderDialog(BuildContext context) async {
  // show the loading dialog
  showDialog(
    // The user CANNOT close this dialog  by pressing outsite it
      barrierDismissible: false,

      context: context,
      builder: (_) {
        return const ShowLoaderDialog();
      });}