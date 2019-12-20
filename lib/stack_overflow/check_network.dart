import 'dart:async';

import 'package:flutter/material.dart';
import 'package:connectivity/connectivity.dart';

class CheckNetworkPage extends StatefulWidget {
  @override
  _CheckNetworkPageState createState() => _CheckNetworkPageState();
}

class _CheckNetworkPageState extends State<CheckNetworkPage> {
  StreamSubscription<ConnectivityResult> _networkSubscription;


  @override
  initState() {
    super.initState();

    _networkSubscription = Connectivity().onConnectivityChanged.listen((ConnectivityResult result) {
      if (result == ConnectivityResult.mobile) {
        // I am connected to a mobile network.
      } else if (result == ConnectivityResult.wifi) {
        // I am connected to a wifi network.
      } else if (result == ConnectivityResult.none) {
        // I am not connected any network.
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }

// Be sure to cancel subscription after you are done
  @override
  dispose() {
    super.dispose();

    _networkSubscription.cancel();
  }
}
