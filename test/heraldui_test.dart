import 'package:flutter_test/flutter_test.dart';
import 'package:heraldui/heraldui.dart';
import 'package:heraldui/heraldui_platform_interface.dart';
import 'package:heraldui/heraldui_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockHeralduiPlatform
    with MockPlatformInterfaceMixin
    implements HeralduiPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final HeralduiPlatform initialPlatform = HeralduiPlatform.instance;

  test('$MethodChannelHeraldui is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelHeraldui>());
  });

  test('getPlatformVersion', () async {
    Heraldui heralduiPlugin = Heraldui();
    MockHeralduiPlatform fakePlatform = MockHeralduiPlatform();
    HeralduiPlatform.instance = fakePlatform;

    expect(await heralduiPlugin.getPlatformVersion(), '42');
  });
}
