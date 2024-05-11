import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store/core/app/app_prefs.dart';
import 'package:store/core/app/di.dart';
import 'package:store/core/util/langauge_manager.dart';
import 'package:store/core/util/widgets/custom_text.dart';
import 'package:store/features/authentication/presentation/pages/widgets/text_feild_form.dart';
import 'package:store/presentation/home/view/settings/switch_widget.dart';

import '../../bloc/change_language_bloc.dart';

class SettingsView extends StatefulWidget {
  const SettingsView({super.key});

  @override
  State<SettingsView> createState() => _SettingsViewState();
}

class _SettingsViewState extends State<SettingsView> {
  final AppPreferences _appPref = instance<AppPreferences>();

  @override
  Widget build(BuildContext context) {
    List<DropdownMenuItem<String>> items = [
      DropdownMenuItem(value: LanguageType.ENGLISH.getValue(), child: Text(LanguageType.ENGLISH.name)),
      DropdownMenuItem(value: LanguageType.ARABIC.getValue(), child: Text(LanguageType.ARABIC.name)),
      // ... more items
    ];

    String _selectedValue=LanguageType.ARABIC.getValue();
    return   Scaffold(
      appBar: AppBar(title: const CustomText(text: "Settings")),
      body: BlocProvider(
        create: (context) => ChangeLanguageBloc(),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(children: [
            DropdownButtonFormField<String>(
              items: items,
              value:_selectedValue, // Current selected value
              onChanged: (String? newValue) {
                setState(() {
                  _selectedValue = newValue!;
                  if (_appPref.isEnglish()&& _selectedValue==LanguageType.ARABIC.getValue()) {
                    BlocProvider.of<ChangeLanguageBloc>(context)
                        .add(ChangeLanguageToArabic());
                  } else if (  _selectedValue==LanguageType.ENGLISH.getValue() ) {
                    BlocProvider.of<ChangeLanguageBloc>(context)
                        .add(ChangeLanguageToEnglish());
                  }
                  _appPref.changeAppLanguage();
                });
              },
              decoration: InputDecoration(
                labelText: "Select an option", // Optional label
              ),
            ),
            Center(child:   SwitchThemeWidget(isDark: _appPref.isDark(),)),

          ]),
        ),
      ),
    );
  }
}
