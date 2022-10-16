import 'dart:async';

import 'package:base_clean/app/di/get_it.dart';
import 'package:base_clean/presentation/base/resources/assets.gen.dart';
import 'package:base_clean/presentation/base/resources/routes_manager.dart';
import 'package:base_clean/presentation/base/resources/routes_manager.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final _appRouter = getIt<RoutesManager>();
  Timer? _timer;

  _startDelay() {
    _timer = Timer(const Duration(milliseconds: 500), _goNext);
  }

  _goNext() async {
    _appRouter.replaceNamed(RouteName.home);
  }

  @override
  void initState() {
    _startDelay();
    super.initState();
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SvgPicture.asset(
          Assets.images.icons.logo,
          height: 250,
          width: 250,
        ),
      ),
    );
  }
}
