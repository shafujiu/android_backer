import 'package:flutter_test/flutter_test.dart';
import 'package:android_backer/android_backer.dart';
import 'package:android_backer/android_backer_platform_interface.dart';
import 'package:android_backer/android_backer_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockAndroidBackerPlatform
    with MockPlatformInterfaceMixin
    implements AndroidBackerPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');

  @override
  Future<void> goBack() => Future.value();
}

void main() {
  final AndroidBackerPlatform initialPlatform = AndroidBackerPlatform.instance;

  test('$MethodChannelAndroidBacker is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelAndroidBacker>());
  });

  test('getPlatformVersion', () async {
    MockAndroidBackerPlatform fakePlatform = MockAndroidBackerPlatform();
    AndroidBackerPlatform.instance = fakePlatform;

    expect(await AndroidBacker.getPlatformVersion(), '42');
  });
}
