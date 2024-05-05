
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store/core/app/app.dart';
import 'package:store/core/app/di.dart';

import 'core/util/bloc_observer.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initAppModule();
  Bloc.observer=MyBlocObserver();

      runApp(const MyApp());



}
