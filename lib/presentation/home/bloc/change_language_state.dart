part of 'change_language_bloc.dart';

class ChangeLanguageState {
  Locale? locale;
  final AppPreferences _appPref = instance<AppPreferences>();

  ChangeLanguageState({this.locale}) {
    locale ??= _appPref.getLocal();
  }
  initialThemeState({required ThemeData themeData } ) {}

  copyWith({Locale? locale}) {
    return ChangeLanguageState(
      locale: locale ?? this.locale,
    );
  }
}
