
import 'package:flutter/material.dart';
import 'package:store/core/app/app.dart';
import 'package:store/core/app/di.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initAppModule();
  runApp(const MyApp());
}
