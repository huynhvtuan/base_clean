import 'package:base_clean/data/network/error_handler.dart';
import 'package:base_clean/presentation/base/resources/strings_manager.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class ErrorScreen extends StatelessWidget {
  const ErrorScreen({Key? key, this.onRetryPressed, this.message})
      : super(key: key);
  final String? message;

  final VoidCallback? onRetryPressed;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(message ?? ResponseMessage.defaultError),
          const SizedBox(
            height: 8,
          ),
          ElevatedButton(
            onPressed: onRetryPressed,
            child: Text(AppStrings.retryAgain.tr()),
          ),
        ],
      ),
    );
  }
}
