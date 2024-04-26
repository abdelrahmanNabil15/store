

import 'package:flutter/material.dart';
import 'package:store/core/util/langauge_manager.dart';
import 'package:store/core/util/string_manager.dart';

class ShowLoaderDialog extends StatelessWidget {
  const ShowLoaderDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      // The background color
      backgroundColor: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children:   [
              // The loading indicator
              const CircularProgressIndicator.adaptive(),
              const SizedBox(
                width: 20,
              ),
              Text(AppStrings.pleaseWait.tr(context) )
            ],
          ),
        ),
      ),
    );
  }
}
