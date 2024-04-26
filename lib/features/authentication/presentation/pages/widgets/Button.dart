import 'package:flutter/material.dart';
import 'package:store/core/util/color_manager.dart';
import 'package:store/core/util/font_manager.dart';
import 'package:store/core/util/style_manager.dart';
import 'package:store/core/util/values_manager.dart';



class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final bool isDarkTheme;

  CustomButton({
    required this.text,
    required this.onPressed,
    required this.isDarkTheme,
  });

  @override
  Widget build(BuildContext context) {
    final Color colorManager = isDarkTheme ? ColorManager.colorPrimaryDark : ColorManager.colorPrimaryLight;

    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: isDarkTheme ? ColorManager.colorPrimaryDark : ColorManager.colorPrimaryLight,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppSize.s12),
        ),
        padding: const EdgeInsets.symmetric(
          horizontal: AppPadding.p16,
          vertical: AppPadding.p12,
        ),
      ),
      child: Text(
        text,
        style: getBoldStyle(
          fontSize: FontSize.s18,
          color: isDarkTheme ? ColorManager.colorFontPrimaryDark : ColorManager.colorFontPrimaryLight,
        ),
      ),
    );
  }
}
