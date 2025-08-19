import 'android_backer_platform_interface.dart';

class AndroidBacker {
  static Future<String?> getPlatformVersion() {
    return AndroidBackerPlatform.instance.getPlatformVersion();
  }

  static Future<void> goBack() {
    return AndroidBackerPlatform.instance.goBack();
  }
}
