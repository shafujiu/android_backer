import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'android_backer_method_channel.dart';

abstract class AndroidBackerPlatform extends PlatformInterface {
  /// Constructs a AndroidBackerPlatform.
  AndroidBackerPlatform() : super(token: _token);

  static final Object _token = Object();

  static AndroidBackerPlatform _instance = MethodChannelAndroidBacker();

  /// The default instance of [AndroidBackerPlatform] to use.
  ///
  /// Defaults to [MethodChannelAndroidBacker].
  static AndroidBackerPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [AndroidBackerPlatform] when
  /// they register themselves.
  static set instance(AndroidBackerPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() async {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }

  Future<void> goBack() async {
    throw UnimplementedError('goBack() has not been implemented.');
  }
}
