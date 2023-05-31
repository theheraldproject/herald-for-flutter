import 'dart:typed_data';

import 'heraldui_platform_interface.dart';

class Heraldui {
  Future<String?> getPlatformVersion() {
    return HeralduiPlatform.instance.getPlatformVersion();
  }
  
  Future<bool?> setPayload(ByteData payload) {
    return HeralduiPlatform.instance.setPayload(payload);
  }
}
