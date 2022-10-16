import 'package:base_clean/app/app.dart';
import 'package:base_clean/app/di/get_it.dart';
import 'package:base_clean/presentation/base/resources/language_manager.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initDependencyInjection();
  await EasyLocalization.ensureInitialized();
  runApp(EasyLocalization(
      supportedLocales: const [vietnamLocal, englishLocal],
      path: assetsPathLocalisations,
      child: const App()));
}
