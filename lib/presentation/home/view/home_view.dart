import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:store/core/app/app_prefs.dart';
import 'package:store/core/util/ColorManager/color_app_light.dart';
import 'package:store/core/util/asset_manger.dart';
import 'package:store/core/util/routes_manager.dart';
import 'package:store/core/util/string_manager.dart';
import 'package:store/core/util/values_manager.dart';
import 'package:store/core/util/widgets/custom_text.dart';
import 'package:store/features/products/presentation/pages/categories/categories_view.dart';
import 'package:store/features/products/presentation/pages/products_view.dart';
import 'package:store/presentation/home/bloc/change_language_bloc.dart';
import 'package:store/presentation/home/view/widgets/ImageSlider.dart';
import 'package:store/presentation/home/view/widgets/search.dart';

import '../../../core/app/di.dart';
import '../../../core/util/color_manager.dart';

class HomeView extends StatelessWidget {
  HomeView({super.key});

  final AppPreferences _appPref = instance<AppPreferences>();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => ChangeLanguageBloc(),
        lazy: false,
        child: Scaffold(
          drawer: _darwerWiget(context),
          appBar: AppBar(
            leading: Builder(
              builder: (BuildContext context) {
                return IconButton(
                  icon: SvgPicture.asset(
                    ImageAssets.menuIcon,
                    color: Theme.of(context).iconTheme.color,
                  ),
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                  tooltip:
                      MaterialLocalizations.of(context).openAppDrawerTooltip,
                );
              },
            ),
            title: const Text(AppStrings.appName),
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
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
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
                CategoriesView(),
                const ProductView()
              ]),
            ),
          ),
        ));
  }

  _darwerWiget(context) {
    return Drawer(
      child: Column(children: [
        Container(height: AppSize.s190, color: ColorManagerLight.colorPrimary),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            leading: const Icon(Icons.settings),
            title: CustomText(
                text: "Settings",
                style: Theme.of(context).textTheme.titleMedium
            ),
            onTap: () {
              Navigator.pushNamed(context, Routes.settingsView);
            },
          ),
        )
      ]),
    );
  }
}
