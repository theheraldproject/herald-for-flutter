import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'heraldui_platform_interface.dart';

/// An implementation of [HeralduiPlatform] that uses method channels.
class MethodChannelHeraldui extends HeralduiPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('heraldui');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }

  @override
  Future<bool?> setPayload(ByteData payload) async {
    final result = await methodChannel.invokeMethod<bool>('setPayload', payload);
    return result;
  }
}
