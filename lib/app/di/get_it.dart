import 'package:base_clean/app/di/get_it.config.dart';
import 'package:base_clean/presentation/base/resources/routes_manager.gr.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:shared_preferences/shared_preferences.dart';

final getIt = GetIt.instance;

@injectableInit
Future<void> initDependencyInjection() async => $initGetIt(getIt);

@module
abstract class UtilInjectableModule {
  @preResolve
  Future<SharedPreferences> get prefs => SharedPreferences.getInstance();

  @lazySingleton
  FlutterSecureStorage get secureStorage => const FlutterSecureStorage();

  @lazySingleton
  InternetConnectionChecker get internetConnectionChecker =>
      InternetConnectionChecker();

  @singleton
  RoutesManager get appRouter => RoutesManager();
}
