import 'package:base_clean/presentation/base/resources/color_manager.dart';
import 'package:flutter/material.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class SmartRefresherCustom extends StatefulWidget {
  const SmartRefresherCustom({
    Key? key,
    required this.child,
    this.enablePullDown = true,
    this.enablePullUp = true,
    this.onRefresh,
    this.onLoading,
  }) : super(key: key);
  final Widget child;
  final bool enablePullDown, enablePullUp;
  final Future Function()? onRefresh;
  final Future Function()? onLoading;
  @override
  State<SmartRefresherCustom> createState() => _SmartRefresherCustomState();
}

class _SmartRefresherCustomState extends State<SmartRefresherCustom> {
  final RefreshController _refreshController =
      RefreshController(initialRefresh: false);

  void _onRefresh() async {
    await widget.onRefresh?.call();
    _refreshController.refreshCompleted();
  }

  void _onLoading() async {
    await widget.onLoading?.call();

    _refreshController.loadComplete();
  }

  Widget _buildHeader() {
    const double _height = 30;
    return const MaterialClassicHeader(
      color: AppColor.primary,
      distance: _height,
      height: _height,
    );
  }

  @override
  Widget build(BuildContext context) {
    return SmartRefresher(
      enablePullDown: widget.enablePullDown,
      enablePullUp: widget.enablePullUp,
      header: _buildHeader(),
      footer: CustomFooter(
        builder: (BuildContext context, mode) {
          switch (mode) {
            case LoadStatus.loading:
              return Container(
                  height: 50,
                  width: 50,
                  color: Colors.transparent,
                  child: const Center(
                      child: CircularProgressIndicator(
                    color: AppColor.primary,
                  )));
            default:
              return const SizedBox();
          }
        },
      ),
      controller: _refreshController,
      onRefresh: _onRefresh,
      onLoading: _onLoading,
      child: widget.child,
    );
  }
}
