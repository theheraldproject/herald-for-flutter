import 'dart:typed_data';

import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'heraldui_method_channel.dart';

abstract class HeralduiPlatform extends PlatformInterface {
  /// Constructs a HeralduiPlatform.
  HeralduiPlatform() : super(token: _token);

  static final Object _token = Object();

  static HeralduiPlatform _instance = MethodChannelHeraldui();

  /// The default instance of [HeralduiPlatform] to use.
  ///
  /// Defaults to [MethodChannelHeraldui].
  static HeralduiPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [HeralduiPlatform] when
  /// they register themselves.
  static set instance(HeralduiPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }

  Future<bool?> setPayload(ByteData payload) {
    throw UnimplementedError('setPayload() has not been implemented.');
  }
}
