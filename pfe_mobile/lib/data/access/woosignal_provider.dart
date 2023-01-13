import 'package:woosignal/woosignal.dart';

class WoosignalProvider {

  WoosignalProvider() {
  }

  static getInstance() async {
      await WooSignal.instance.init(appKey: "app_090a61e4b2f3858d4ce462e3199a87", debugMode: true);
  }
}