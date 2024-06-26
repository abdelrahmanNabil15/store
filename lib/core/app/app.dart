
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:store/core/app/di.dart';
import 'package:store/core/util/langauge_manager.dart';
import 'package:store/core/util/routes_manager.dart';
import 'package:store/core/util/theme_manager.dart';
import 'package:store/features/authentication/presentation/bloc/auth_bloc.dart';
import 'package:store/presentation/home/view/settings/bloc/theme_bloc.dart';

import '../../presentation/home/bloc/change_language_bloc.dart';



GlobalKey<NavigatorState>? navigatorKey = GlobalKey<NavigatorState>();

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // final AppPreferences _appPreferences = instance<AppPreferences>();

  // @override
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      systemNavigationBarColor: Colors.transparent,
      statusBarColor: Colors.transparent,
    ));
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => ChangeLanguageBloc(),

        ),
        BlocProvider(
          create: (context) =>   instance<AuthBloc>(),

        ), BlocProvider(
    create: (context) => instance<ThemeBloc>(),)
      ],
      child: BlocBuilder<ChangeLanguageBloc, ChangeLanguageState>(
        builder: (context, state) {
          return MaterialApp(
            title: "Error handler",
            locale: state.locale,
            navigatorKey: navigatorKey,
            supportedLocales: const [ENGLISH_LOCAL, ARABIC_LOCAL],
            localizationsDelegates: const [
              AppLocalizations.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate
            ],
            localeResolutionCallback: (deviceLocale, supportedLocales) {
              for (var locale in supportedLocales) {
                if (deviceLocale != null &&
                    deviceLocale.languageCode == locale.languageCode) {
                  return deviceLocale;
                }
              }
              
              return supportedLocales.first;
            },
            onGenerateRoute: RouteGenerator.getRoute,
            initialRoute: Routes.splashRoute,
            debugShowCheckedModeBanner: false,
            theme:getApplicationTheme(),
          );
        },
      ),
    );
  }
}
