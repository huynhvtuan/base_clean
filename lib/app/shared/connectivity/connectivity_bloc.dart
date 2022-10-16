import 'dart:async';

import 'package:base_clean/app/shared/connectivity/connectivity_state.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

class ConnectivityBloc extends Cubit<ConnectivityState> {
  ConnectivityBloc() : super(const ConnectivityState());
  late final StreamSubscription _subscription;

  void init() {
    _subscription = Connectivity()
        .onConnectivityChanged
        .listen((ConnectivityResult result) async {
      if (result != ConnectivityResult.none) {
        bool isDeviceConnected =
            await InternetConnectionChecker().hasConnection;
        emit(state.copyWith(isConnected: isDeviceConnected));
      } else {
        emit(state.copyWith(isConnected: false));
      }
    });
  }

  @override
  Future<void> close() {
    _subscription.cancel();
    return super.close();
  }
}
