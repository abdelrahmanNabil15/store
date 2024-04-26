import 'package:flutter/material.dart';
import 'package:store/core/util/color_manager.dart';
import 'package:store/core/util/style_manager.dart';
import 'package:store/core/util/values_manager.dart';

void showCustomSnackBar(
    {required String message,
      required BuildContext context,
      bool isError = true}) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      backgroundColor: isError ? Colors.red : Colors.black54,
      behavior: SnackBarBehavior.floating,
      content: Text(
          message,
         style:  getLightStyle(color:ColorManager.colorWhite),
      ),
      duration: const Duration(seconds: 2),
      margin: EdgeInsets.symmetric(vertical: AppSize.s12, horizontal: AppSize.s12),
      elevation: 0,
    ),
  );
}