import 'dart:ui';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:store/core/app/app_prefs.dart';
import 'package:store/core/util/langauge_manager.dart';
import 'package:store/core/util/theme_manager.dart';
import '../../../core/app/di.dart';

part 'change_language_event.dart';

part 'change_language_state.dart';

class ChangeLanguageBloc extends Bloc<ChangeLanguageEvent, ChangeLanguageState> {

  final AppPreferences _appPref = instance<AppPreferences>();
  ChangeLanguageBloc() : super(ChangeLanguageState()) {
    on<ChangeLanguageToEnglish>(_mapChangeLanguageToEnglishMode);
    on<ChangeLanguageToArabic>(_mapChangeLanguageToArabicMode);

      }



  _mapChangeLanguageToEnglishMode(
      ChangeLanguageToEnglish event, Emitter<ChangeLanguageState> emit) {
    emit(state.copyWith(locale: ENGLISH_LOCAL));
  }

  _mapChangeLanguageToArabicMode(
      ChangeLanguageToArabic event, Emitter<ChangeLanguageState> emit) {
    emit(state.copyWith(locale: ARABIC_LOCAL));
  }
}
