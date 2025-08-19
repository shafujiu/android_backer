import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'android_backer_platform_interface.dart';

/// An implementation of [AndroidBackerPlatform] that uses method channels.
class MethodChannelAndroidBacker extends AndroidBackerPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final MethodChannel methodChannel = const MethodChannel('android_backer');
  
  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }

  @override
  Future<void> goBack() async {
    await methodChannel.invokeMethod<void>('goBack');
  }
}
