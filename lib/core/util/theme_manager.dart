import 'package:flutter/material.dart';
import 'package:store/core/util/ColorManager/color_app_dark.dart';

import 'ColorManager/color_app_light.dart';
import 'color_manager.dart';
import 'font_manager.dart';
import 'style_manager.dart';
import 'values_manager.dart';

abstract class MainThemeApp {
  late ThemeData themeData;
}

class LightModeTheme implements MainThemeApp {
  @override
  ThemeData themeData = ThemeData(
    primaryColor: ColorManagerLight.colorPrimary,
    cardColor: ColorManagerLight.colorCard,
    scaffoldBackgroundColor: ColorManagerLight.colorBackground,
    disabledColor: ColorManagerLight.colorGrey1,
    appBarTheme: AppBarTheme(
        centerTitle: true,
        backgroundColor: ColorManagerLight.colorBackground,
        iconTheme: IconThemeData(color: ColorManagerLight.colorBlack,),
        elevation: 0.0,
        titleTextStyle: getBoldStyle(
            fontSize: FontSize.s22, color: ColorManagerLight.fontPrimary)),
    cardTheme: CardTheme(
        color: ColorManagerLight.colorWhite,
        shadowColor: ColorManagerLight.colorPlaceHolder,
        elevation: AppSize.s4),
      buttonTheme: ButtonThemeData(
          shape: const StadiumBorder(),
          disabledColor: ColorManagerLight.colorGrey1,
          buttonColor: ColorManagerLight.colorPrimary,
          splashColor: ColorManagerLight.colorPrimary),

      // elevated button them
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              textStyle: getRegularStyle(
                  color: ColorManagerLight.fontPrimary, fontSize: FontSize.s17),
              backgroundColor: ColorManagerLight.colorPrimary,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(AppSize.s12)))),

      // text button them
      textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            foregroundColor: ColorManagerLight.colorPrimary,

            textStyle: getMediumStyle(color: ColorManagerDark.fontPrimary,
                fontSize: FontSize.s16),
            // splashFactory: NoSplash.splashFactory
          )
      ),


      // text theme
      textTheme: TextTheme(
        displayLarge: getSemiBoldStyle(
            color: ColorManagerLight.fontPrimary, fontSize: FontSize.s16),
        headlineLarge: getSemiBoldStyle(
            color: ColorManagerLight.fontPrimary, fontSize: FontSize.s16),
        headlineMedium: getRegularStyle(
            color: ColorManagerLight.fontPrimary, fontSize: FontSize.s14),
        titleMedium: getMediumStyle(
            color: ColorManagerLight.fontPrimary, fontSize: FontSize.s16),
        titleLarge: getBoldStyle(
            color: ColorManagerLight.fontPrimary, fontSize: FontSize.s22),
        titleSmall: getRegularStyle(
            color: ColorManagerLight.fontPrimary, fontSize: FontSize.s16),
        bodyLarge: getRegularStyle(color: ColorManagerLight.fontPrimary),
        bodySmall: getRegularStyle(color: ColorManagerLight.fontPrimary),
        bodyMedium: getRegularStyle(
            color: ColorManagerLight.colorGrey1, fontSize: FontSize.s12),
        labelSmall: getBoldStyle(
            color: ColorManagerLight.colorPrimary, fontSize: FontSize.s12),),
    // input decoration theme (text form field)
    inputDecorationTheme: InputDecorationTheme(
      // content padding
        contentPadding: const EdgeInsets.all(AppPadding.p8),
        // hint style
        hintStyle: getRegularStyle(
            color: ColorManagerLight.colorPlaceHolder, fontSize: FontSize.s14),
        labelStyle:
        getMediumStyle(
            color: ColorManagerLight.colorGrey1, fontSize: FontSize.s14),
        errorStyle: getRegularStyle(color: ColorManagerLight.colorError),

        // enabled border style
        enabledBorder: OutlineInputBorder(
            borderSide:
            BorderSide(
                color: ColorManagerLight.colorGrey1, width: AppSize.s1_5),
            borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8))),

        // focused border style
        focusedBorder: OutlineInputBorder(
            borderSide:
            BorderSide(
                color: ColorManagerLight.colorPrimary, width: AppSize.s1_5),
            borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8))),

        // error border style
        errorBorder: OutlineInputBorder(
            borderSide:
            BorderSide(
                color: ColorManagerLight.colorError, width: AppSize.s1_5),
            borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8))),
        // focused border style
        focusedErrorBorder: OutlineInputBorder(
            borderSide:
            BorderSide(
                color: ColorManagerLight.colorPrimary, width: AppSize.s1_5),
            borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8)))),
  );
}

class DarkModeTheme implements MainThemeApp {
  @override
  ThemeData themeData = ThemeData(
      primaryColor: ColorManagerDark.colorPrimary,
      cardColor: ColorManagerDark.colorCard,
      scaffoldBackgroundColor: ColorManagerDark.colorBackground,
      disabledColor: ColorManagerDark.colorGrey1,


      // cardView theme
      cardTheme: CardTheme(
          color: ColorManagerDark.colorWhite,
          shadowColor: ColorManagerDark.colorPlaceHolder,
          elevation: AppSize.s4),

      // appBar theme
      appBarTheme: AppBarTheme(
          centerTitle: true,
          backgroundColor: ColorManagerDark.colorBackground,
          iconTheme: IconThemeData(color: ColorManagerDark.colorWhite,),
          elevation: 0.0,
          titleTextStyle: getBoldStyle(
              fontSize: FontSize.s22, color: ColorManagerDark.fontPrimary)),

      // button theme
      buttonTheme: ButtonThemeData(
          shape: const StadiumBorder(),
          disabledColor: ColorManagerDark.colorGrey1,
          buttonColor: ColorManagerDark.colorPrimary,
          splashColor: ColorManagerDark.colorPrimary),

      // elevated button them
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              textStyle: getRegularStyle(
                  color: ColorManagerDark.fontPrimary, fontSize: FontSize.s17),
              backgroundColor: ColorManagerDark.colorPrimary,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(AppSize.s12)))),

      // text button them
      textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            foregroundColor: ColorManagerDark.colorPrimary,

            textStyle: getMediumStyle(color: ColorManagerDark.fontPrimary,
                fontSize: FontSize.s16),
            // splashFactory: NoSplash.splashFactory
          )
      ),


      // text theme
      textTheme: TextTheme(
          displayLarge: getSemiBoldStyle(
              color: ColorManagerDark.fontPrimary, fontSize: FontSize.s16),
          headlineLarge: getSemiBoldStyle(
              color: ColorManagerDark.fontPrimary, fontSize: FontSize.s16),
          headlineMedium: getRegularStyle(
              color: ColorManagerDark.fontPrimary, fontSize: FontSize.s14),
          titleMedium: getMediumStyle(
              color: ColorManagerDark.fontPrimary, fontSize: FontSize.s16),
          titleLarge: getBoldStyle(
              color: ColorManagerDark.fontPrimary, fontSize: FontSize.s22),
          titleSmall: getRegularStyle(
              color: ColorManagerDark.fontPrimary, fontSize: FontSize.s16),
          bodyLarge: getRegularStyle(color: ColorManagerDark.fontPrimary),
          bodySmall: getRegularStyle(color: ColorManagerDark.fontPrimary),
          bodyMedium: getRegularStyle(
              color: ColorManagerDark.colorGrey1, fontSize: FontSize.s12),
          labelSmall: getBoldStyle(
              color: ColorManagerDark.colorPrimary, fontSize: FontSize.s12),));


      }

      ThemeData getApplicationTheme() {
  return LightModeTheme().themeData;

  //   ThemeData(
  //   // main colors
  //   primaryColor: ColorManagerLight.colorPrimary,
  //   primaryColorLight: ColorManagerLight.colorPrimary,
  //   primaryColorDark: ColorManagerLight.colorPrimary,
  //   disabledColor: ColorMa    inputDecorationTheme: InputDecorationTheme(
  //       // content padding
  //         contentPadding: const EdgeInsets.all(AppPadding.p8),
  //         // hint style
  //         hintStyle: getRegularStyle(
  //             color: ColorManagerDark.colorPlaceHolder, fontSize: FontSize.s14),
  //         labelStyle:
  //         getMediumStyle(color: ColorManagerDark.colorGrey1, fontSize: FontSize.s14),
  //         errorStyle: getRegularStyle(color: ColorManagerDark.colorError),
  //
  //         // enabled border style
  //         enabledBorder: OutlineInputBorder(
  //             borderSide:
  //             BorderSide(color: ColorManagerDark.colorGrey1, width: AppSize.s1_5),
  //             borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8))),
  //
  //         // focused border style
  //         focusedBorder: OutlineInputBorder(
  //             borderSide:
  //             BorderSide(
  //                 color: ColorManagerDark.colorPrimary, width: AppSize.s1_5),
  //             borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8))),
  //
  //         // error border style
  //         errorBorder: OutlineInputBorder(
  //             borderSide:
  //             BorderSide(color: ColorManagerDark.colorError, width: AppSize.s1_5),
  //             borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8))),
  //         // focused border style
  //         focusedErrorBorder: OutlineInputBorder(
  //             borderSide:
  //             BorderSide(
  //                 color: ColorManagerDark.colorPrimary, width: AppSize.s1_5),
  //             borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8)))),
  //   );nagerLight.colorGrey1,
  //   splashColor: ColorManagerLight.colorBackground,
  //   // fontFamily: FontConstants.fontFamily,
  //
  //   // cardView theme
  //   cardTheme: CardTheme(
  //       color: ColorManagerLight.colorWhite,
  //       shadowColor: ColorManagerLight.colorPlaceHolder,
  //       elevation: AppSize.s4),
  //
  //   // appBar theme
  //   appBarTheme: AppBarTheme(
  //       centerTitle: true,
  //       backgroundColor:ColorManagerLight.colorWhite,
  //       iconTheme: IconThemeData(color: ColorManagerLight.colorBlack,  ),
  //       elevation: 0.0,
  //
  //       titleTextStyle: getRegularStyle(fontSize: FontSize.s16, color: ColorManagerLight.fontPrimary)),
  //
  //   // button theme
  //   buttonTheme: ButtonThemeData(
  //       shape: const StadiumBorder(),
  //       disabledColor: ColorManagerLight.colorGrey1,
  //       buttonColor: ColorManagerLight.colorPrimary,
  //       splashColor: ColorManagerLight.colorPrimary),
  //
  //   // elevated button them
  //   elevatedButtonTheme: ElevatedButtonThemeData(
  //       style: ElevatedButton.styleFrom(
  //           textStyle: getRegularStyle(color:  ColorManagerLight.fontPrimary, fontSize: FontSize.s17), backgroundColor: ColorManagerLight.colorPrimary,
  //           shape: RoundedRectangleBorder(
  //               borderRadius: BorderRadius.circular(AppSize.s12)))),
  //
  //   // text button them
  //   textButtonTheme: TextButtonThemeData(
  //       style: TextButton.styleFrom(
  //           foregroundColor: ColorManagerLight.colorPrimary, textStyle: getMediumStyle(color:  ColorManagerLight.colorPlaceHolder, fontSize: FontSize.s16),
  //           // splashFactory: NoSplash.splashFactory
  //       )
  //   ),
  //
  //   // text theme
  //   textTheme: TextTheme(
  //       displayLarge: getSemiBoldStyle(color: ColorManagerLight.fontPrimary, fontSize: FontSize.s16),
  //       headlineLarge: getSemiBoldStyle(color: ColorManagerLight.fontPrimary, fontSize: FontSize.s16),
  //       headlineMedium: getRegularStyle(color: ColorManagerLight.fontPrimary, fontSize: FontSize.s14),
  //       titleMedium: getMediumStyle(color: ColorManagerLight.fontPrimary, fontSize: FontSize.s16),
  //       titleSmall: getRegularStyle(color: ColorManagerLight.fontPrimary, fontSize: FontSize.s16),
  //       bodyLarge: getRegularStyle(color: ColorManagerLight.fontPrimary),
  //       bodySmall: getRegularStyle(color: ColorManagerLight.fontPrimary),
  //       bodyMedium: getRegularStyle(color: ColorManagerLight.colorGrey1, fontSize: FontSize.s12),
  //       labelSmall: getBoldStyle(color: ColorManagerLight.colorPrimary, fontSize: FontSize.s12)),
  //
  //   // input decoration theme (text form field)
  //   inputDecorationTheme: InputDecorationTheme(
  //       // content padding
  //
  //       // hint style
  //       hintStyle: getRegularStyle(color: ColorManagerLight.colorGrey1, fontSize: FontSize.s14),
  //       labelStyle:
  //           getMediumStyle(color: ColorManagerLight.colorGrey1, fontSize: FontSize.s14),
  //       errorStyle: getRegularStyle(color: ColorManagerLight.colorError),
  //
  //       contentPadding: const EdgeInsets.symmetric(
  //         vertical: AppMargin.m12,
  //         horizontal: AppMargin. m16,
  //       ),
  //       enabledBorder: OutlineInputBorder(
  //         gapPadding: 0,
  //         borderRadius: BorderRadius.circular(AppSize.s4),
  //         borderSide:   BorderSide(color: ColorManager.colorPlaceHolderLight),
  //       ),
  //       disabledBorder: OutlineInputBorder(
  //         gapPadding: 0,
  //         borderRadius: BorderRadius.circular(AppSize.s4),
  //         borderSide:   BorderSide(color: ColorManager.colorPlaceHolderLight),
  //       ),
  //
  //       focusedErrorBorder: OutlineInputBorder(
  //         gapPadding: 0,
  //         borderRadius: BorderRadius.circular(AppSize.s4),
  //         borderSide:   BorderSide(color: ColorManager.colorError),
  //       ),
  //       errorBorder: OutlineInputBorder(
  //         gapPadding: 0,
  //         borderRadius: BorderRadius.circular(AppSize.s4),
  //         borderSide:   BorderSide(color: ColorManager.colorError),
  //       ),
  //       focusedBorder: OutlineInputBorder(
  //         gapPadding: 0,
  //         borderRadius: BorderRadius.circular(AppSize.s4),
  //         borderSide:   BorderSide(color:ColorManager.colorPlaceHolderLight),
  //
  //         ))
  //   // label style
  // );
  }

  enum AppTheme {
  Light,
  Dark
  // GreenLight,
  // GreenDark,
  // BlueLight,
  // BlueDark,
  }
