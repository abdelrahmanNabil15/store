import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store/core/app/di.dart';
import 'package:store/core/util/theme_manager.dart';
import 'package:store/presentation/home/view/settings/bloc/theme_bloc.dart';

class SwitchThemeWidget extends StatefulWidget {
    bool isDark;
    SwitchThemeWidget({super.key, required this.isDark});

  @override
  State<SwitchThemeWidget> createState() => _SwiSwitchThemeWidgetState();
}

class _SwiSwitchThemeWidgetState extends State<SwitchThemeWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          BlocProvider(
             create: (context) => ThemeBloc(),
            child: BlocBuilder<ThemeBloc, ThemeState>(


                builder: (context, state) {
                  return ListView.builder(
                    shrinkWrap: true,
                      padding: const EdgeInsets.all(8),
                      itemCount: AppTheme.values.length,
                      itemBuilder: (context, index) {
                        final itemAppTheme = AppTheme.values[index];
                        return Card(
                            color: appThemeData[itemAppTheme]!.primaryColor,
                            child: ListTile(
                              title: Text(
                                itemAppTheme.name,
                                style: appThemeData[itemAppTheme]!.textTheme
                                    .titleMedium,
                              ),
                              onTap: () {
                                context
                                    .read<ThemeBloc>()
                                    .add(ThemeChangedEvent(theme: itemAppTheme));
                              },
                            ));
                      });
                }))
        ],
      ),
    );
  }
}
