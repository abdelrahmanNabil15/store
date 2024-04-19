
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store/core/app/app_prefs.dart';
import 'package:store/core/network/error_handler.dart';
import 'package:store/core/util/langauge_manager.dart';
import 'package:store/core/util/string_manager.dart';
import 'package:store/presentation/home/bloc/change_language_bloc.dart';

import '../../../core/app/di.dart';



class HomeView extends StatelessWidget {
  HomeView({super.key});

  final AppPreferences _appPref = instance<AppPreferences>();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) =>  ChangeLanguageBloc(),
        lazy: false,
        child: Scaffold(
          appBar: AppBar(
            title: Text("Home"),
            actions: [
              IconButton(
                  onPressed: () {
                    if(_appPref.isEnglish()) {
                      BlocProvider.of<ChangeLanguageBloc>(context).add(ChangeLanguageToArabic());
                    } else {
                      BlocProvider.of<ChangeLanguageBloc>(context).add(ChangeLanguageToEnglish());
                    }
                    _appPref.changeAppLanguage();
                  },
                  icon: const Icon(Icons.language))
            ],
          ),
          body:  Column(children: [
            Center(child: Text( ResponseMessage.BAD_REQUEST.tr(context)),)
          ]),
        ));
  }
}