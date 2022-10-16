// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:internet_connection_checker/internet_connection_checker.dart'
    as _i4;
import 'package:shared_preferences/shared_preferences.dart' as _i6;

import '../../presentation/base/resources/routes_manager.gr.dart' as _i5;
import '../app_prefs.dart' as _i7;
import 'get_it.dart' as _i8; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(
  _i1.GetIt get, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) async {
  final gh = _i2.GetItHelper(
    get,
    environment,
    environmentFilter,
  );
  final utilInjectableModule = _$UtilInjectableModule();
  gh.lazySingleton<_i3.FlutterSecureStorage>(
      () => utilInjectableModule.secureStorage);
  gh.lazySingleton<_i4.InternetConnectionChecker>(
      () => utilInjectableModule.internetConnectionChecker);
  gh.singleton<_i5.RoutesManager>(utilInjectableModule.appRouter);
  await gh.factoryAsync<_i6.SharedPreferences>(
    () => utilInjectableModule.prefs,
    preResolve: true,
  );
  gh.singleton<_i7.AppPreferences>(_i7.AppPreferences(
    get<_i6.SharedPreferences>(),
    get<_i3.FlutterSecureStorage>(),
  ));
  return get;
}

class _$UtilInjectableModule extends _i8.UtilInjectableModule {}
