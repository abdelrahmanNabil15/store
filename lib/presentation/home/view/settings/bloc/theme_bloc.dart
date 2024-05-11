import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:store/core/app/app_prefs.dart';
import 'package:store/core/app/di.dart';
import 'package:store/core/util/theme_manager.dart';

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
part 'theme_event.dart';
part 'theme_state.dart';


class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeBloc() : super(ThemeInitial()) {
    final AppPreferences _appPref = instance<AppPreferences>();

    on<ThemeEvent>((event, emit) async {
      if (event is GetCurrentThemeEvent) {
        final themeIndex = await _appPref.getCachedThemeIndex();
        final theme = AppTheme.values
            .firstWhere((appTheme) => appTheme.index == themeIndex);
        emit(LoadedThemeState(themeData: appThemeData[theme]!));
      } else if (event is ThemeChangedEvent) {
        final themeIndex = event.theme.index;
        await _appPref.cacheThemeIndex(themeIndex);
        emit(LoadedThemeState(themeData: appThemeData[event.theme]!));
      }
    });
  }
}