import 'package:flutter/material.dart';
import 'package:store/core/util/color_manager.dart';
import 'package:store/core/util/langauge_manager.dart';
import 'package:store/core/util/string_manager.dart';
class Loading extends StatelessWidget {
  const Loading({super.key, this.showMessage = true});

  final bool showMessage;

  @override
  Widget build(BuildContext context) {
    return FittedBox(

      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
         CircularProgressIndicator(
           color: ColorManager.colorFontPrimaryLight,
         ),
          Visibility(
            visible: showMessage,
            child: Text(
               AppStrings.pleaseWait.tr(context),
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ),
        ],
      ),
    );
  }
}

