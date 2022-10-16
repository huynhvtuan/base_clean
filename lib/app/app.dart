import 'dart:async';

import 'package:base_clean/app/app_prefs.dart';
import 'package:base_clean/app/di/get_it.dart';
import 'package:base_clean/app/helpers/dialog_helper.dart';
import 'package:base_clean/app/shared/connectivity/connectivity_bloc.dart';
import 'package:base_clean/presentation/base/resources/language_manager.dart';
import 'package:base_clean/presentation/base/resources/routes_manager.gr.dart';
import 'package:base_clean/presentation/base/resources/themes_manager.dart';
import 'package:base_clean/presentation/widget/common/tap_outside_dismiss.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:responsive_framework/responsive_wrapper.dart';
import 'package:responsive_framework/utils/scroll_behavior.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  final AppPreferences _appPreferences = getIt<AppPreferences>();
  final RoutesManager _routesManager = getIt<RoutesManager>();
  Timer? _timer;

  void _startDelay() {
    _timer = Timer(const Duration(milliseconds: 1000), () {
      // FlutterNativeSplash.remove();
    });
  }

  @override
  void initState() {
    configLoading();
    _startDelay();
    super.initState();
  }

  @override
  void didChangeDependencies() {
    _appPreferences.getAppLanguage().then((String currentLanguage) =>
        {context.setLocale(_getLocale(currentLanguage))});
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  Locale _getLocale(String currentLanguage) {
    if (currentLanguage == LanguageType.vietnam.getValue()) {
      return vietnamLocal;
    } else {
      return englishLocal;
    }
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider<ConnectivityBloc>(
              create: (BuildContext context) => ConnectivityBloc()..init()),
        ],
        child: ScreenUtilInit(
            designSize: const Size(375, 812),
            minTextAdapt: true,
            splitScreenMode: true,
            builder: (context, child) {
              return TapOutSideDismiss(
                  child: MaterialApp.router(
                routerDelegate: _routesManager.delegate(),
                routeInformationParser: _routesManager.defaultRouteParser(),
                locale: context.locale,
                theme: AppTheme.lightTheme,
                darkTheme: AppTheme.darkTheme,
                themeMode: ThemeMode.light,
                localizationsDelegates: context.localizationDelegates,
                supportedLocales: context.supportedLocales,
                // builder: EasyLoading.init(),
                builder: (context, child) => ResponsiveWrapper.builder(
                    BouncingScrollWrapper.builder(
                        context,
                        FlutterEasyLoading(
                          child: child,
                        )),
                    maxWidth: 1200,
                    minWidth: 450,
                    defaultScale: true,
                    breakpoints: [
                      const ResponsiveBreakpoint.resize(450, name: MOBILE),
                      const ResponsiveBreakpoint.autoScale(800, name: TABLET),
                      const ResponsiveBreakpoint.autoScale(1000, name: TABLET),
                      const ResponsiveBreakpoint.resize(1200, name: DESKTOP),
                      const ResponsiveBreakpoint.autoScale(2460, name: "4K"),
                    ],
                    background: Container(color: const Color(0xFFF5F5F5))),
              ));
            }));
  }
}
