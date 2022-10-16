import 'package:base_clean/app/types.dart';
import 'package:base_clean/data/network/error_handler.dart';
import 'package:base_clean/presentation/base/resources/color_manager.dart';
import 'package:base_clean/presentation/widget/common/error_screen.dart';
import 'package:flutter/material.dart';

class StateBuilder extends StatelessWidget {
  const StateBuilder(
      {Key? key,
      required this.type,
      required this.content,
      this.onRetryPressed})
      : super(key: key);
  final StateRendererType? type;
  final Widget content;
  final VoidCallback? onRetryPressed;

  @override
  Widget build(BuildContext context) {
    if (type == null || type == StateRendererType.fullScreenLoadingState) {
      return const Center(
          child: CircularProgressIndicator(
        color: AppColor.primary,
      ));
    } else if (type == StateRendererType.emptyScreenState) {
      return ErrorScreen(
        message: ResponseMessage.noContent,
        onRetryPressed: onRetryPressed,
      );
    } else if (type == StateRendererType.fullScreenErrorState) {
      return ErrorScreen(
        onRetryPressed: onRetryPressed,
      );
    }
    return content;
  }
}
