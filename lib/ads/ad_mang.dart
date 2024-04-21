import 'dart:io';

class AdsManager {
  static bool testMode = true;

  static String get rewardedAdUnitId {
    if (Platform.isAndroid) {
      return "ca-app-pub-8492604309774670/1865465954";
    } else {
      throw UnsupportedError("Unsupported Platform");
    }
  }
}
