import 'package:base_clean/app/di/get_it.dart';
import 'package:base_clean/presentation/base/resources/assets.gen.dart';
import 'package:base_clean/presentation/base/resources/color_manager.dart';
import 'package:base_clean/presentation/base/resources/fonts_manager.dart';
import 'package:base_clean/presentation/base/resources/routes_manager.gr.dart';
import 'package:base_clean/presentation/base/resources/sizes_manager.dart';
import 'package:base_clean/presentation/base/resources/strings_manager.dart';
import 'package:base_clean/presentation/base/resources/styles_manager.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:lottie/lottie.dart';

class DialogHelper {
  static final _appRouter = getIt<RoutesManager>();
  static void showLoading({String? message}) {
    if (!EasyLoading.isShow) {
      EasyLoading.show(
          status: message ?? AppStrings.processing.tr(), dismissOnTap: false);
    }
  }

  static void hideLoading() {
    if (EasyLoading.isShow) {
      EasyLoading.dismiss();
    }
  }

  static showErrorDialog(String message,
      {String? retryButtonName, bool isRetryOutlineButton = false}) {
    showDialog(
      context: _appRouter.navigatorKey.currentContext!,
      builder: (BuildContext context) => _getPopUpDialog(context, [
        _getAnimatedImage(Assets.animation.error),
        _getMessage(message),
        _getRetryButton(retryButtonName ?? AppStrings.agree.tr(), context)
      ]),
    );
  }

  static showDialogCustom({required Widget child}) {
    return showDialog(
        context: _appRouter.navigatorKey.currentContext!,
        builder: (BuildContext contextDialog) {
          return Dialog(
            child: child,
          );
        });
  }

  static Widget _getPopUpDialog(BuildContext context, List<Widget> children) {
    return Dialog(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppSize.s14)),
      elevation: AppSize.s1_5,
      backgroundColor: Colors.transparent,
      child: Container(
        decoration: BoxDecoration(
            color: AppColor.white,
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(AppSize.s14),
            boxShadow: const [
              BoxShadow(
                  color: Colors.black26,
                  blurRadius: AppSize.s12,
                  offset: Offset(AppSize.s0, AppSize.s12))
            ]),
        child: _getDialogContent(context, children),
      ),
    );
  }

  static Widget _getDialogContent(BuildContext context, List<Widget> children) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: children,
      ),
    );
  }

  static Widget _getAnimatedImage(String animationName) {
    return SizedBox(
      // height: AppSize.s100,
      // width: AppSize.s100,
      child: Lottie.asset(
        animationName,
        fit: BoxFit.fill,
        width: AppSize.s120,
        height: AppSize.s120,
      ),
    );
  }

  static Widget _getMessage(String message) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(AppPadding.p18),
        child: Text(
          message,
          style: getMediumStyle(color: AppColor.black, fontSize: FontSize.s16),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }

  static Widget _getRetryButton(String buttonTitle, BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(AppPadding.p18),
        child: SizedBox(
          width: AppSize.s180,
          child: ElevatedButton(
              style: ButtonStyle(
                padding: MaterialStateProperty.all<EdgeInsets>(
                    const EdgeInsets.all(10)),
                foregroundColor:
                    MaterialStateProperty.all<Color>(AppColor.white),
                backgroundColor:
                    MaterialStateProperty.all<Color>(AppColor.primary),
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text(buttonTitle)),
        ),
      ),
    );
  }
}

void configLoading() {
  EasyLoading.instance
    ..indicatorType = EasyLoadingIndicatorType.circle
    ..loadingStyle = EasyLoadingStyle.custom
    ..radius = 10.0
    ..backgroundColor = AppColor.grey
    ..indicatorColor = AppColor.primary
    ..textColor = AppColor.white
    ..userInteractions = false
    ..dismissOnTap = false
    ..animationStyle = EasyLoadingAnimationStyle.scale
    ..toastPosition = EasyLoadingToastPosition.bottom;
}
