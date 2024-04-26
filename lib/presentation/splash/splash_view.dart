import 'dart:async';

import 'package:flutter/material.dart';
import 'package:store/core/app/app_prefs.dart';
import 'package:store/core/app/di.dart';

import '../../core/util/routes_manager.dart';
final AppPreferences _appPref = instance<AppPreferences>();
class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  Timer? _timer;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Splash'),
      ),
    );
  }

  _startDelay() {
    _timer =
        Timer(const Duration(milliseconds: 800), _goNext);
  }

  _goNext() async {
    if (await _appPref.isUserLogged() ){
    Navigator.pushReplacementNamed(context, Routes.homeRoute);
    }else{
      Navigator.pushReplacementNamed(context, Routes.loginRoute);

    }
  }

  @override
  void initState() {
    super.initState();
    _startDelay();
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }
}
