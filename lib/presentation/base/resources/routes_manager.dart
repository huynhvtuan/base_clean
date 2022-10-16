import 'package:auto_route/annotations.dart';
import 'package:base_clean/presentation/home/home_screen.dart';
import 'package:base_clean/presentation/splash/splash_screen.dart';

class RouteName {
  static const String splash = '/';
  static const String home = '/home';
}

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route,Screen',
  routes: <AutoRoute>[
    AutoRoute(page: SplashScreen, path: RouteName.splash),
    AutoRoute(page: HomeScreen, path: RouteName.home),
  ],
)
class $RoutesManager {}
