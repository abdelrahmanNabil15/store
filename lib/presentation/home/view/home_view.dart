import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store/core/app/app_prefs.dart';
import 'package:store/core/network/error_handler.dart';
import 'package:store/core/util/asset_manger.dart';
import 'package:store/core/util/langauge_manager.dart';
import 'package:store/core/util/string_manager.dart';
import 'package:store/core/util/style_manager.dart';
import 'package:store/core/util/values_manager.dart';
import 'package:store/features/products/presentation/pages/products_view.dart';
import 'package:store/presentation/home/bloc/change_language_bloc.dart';
import 'package:store/presentation/home/view/widgets/ImageSlider.dart';
import 'package:store/presentation/home/view/widgets/search.dart';

import '../../../core/app/di.dart';
import '../../../core/util/color_manager.dart';
import '../../../features/authentication/presentation/pages/widgets/text_feild_form.dart';

class HomeView extends StatelessWidget {
  HomeView({super.key});

  final AppPreferences _appPref = instance<AppPreferences>();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => ChangeLanguageBloc(),
        lazy: false,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: ColorManager.colorWhite,
            elevation: 0.0,
            title: Text("Store",
                style: getBoldStyle(
                    color: ColorManager.colorFontPrimaryLight,
                    fontSize: AppSize.s24)),
            actions: [
              IconButton(
                  onPressed: () {
                    if (_appPref.isEnglish()) {
                      BlocProvider.of<ChangeLanguageBloc>(context)
                          .add(ChangeLanguageToArabic());
                    } else {
                      BlocProvider.of<ChangeLanguageBloc>(context)
                          .add(ChangeLanguageToEnglish());
                    }
                    _appPref.changeAppLanguage();
                  },
                  icon: Icon(
                    Icons.language,
                    color: ColorManager.colorPrimaryLight,
                  ))
            ],
          ),
          body: SingleChildScrollView(
            child: Column(children: [
              SearchTextFieldForm(),
              ImageSlider(
                imageUrls: [
                  ImageAssets.slider1,
                  ImageAssets.slider2,
                  ImageAssets.slider3,
                  ImageAssets.slider4,
                  ImageAssets.slider5,
                ],
                imageHeight: 200,
              ),
              const ProductView()
            ]),
          ),
        ));
  }
}
