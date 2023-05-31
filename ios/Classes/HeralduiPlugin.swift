import Flutter
import UIKit

public class HeralduiPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "heraldui", binaryMessenger: registrar.messenger())
    let instance = HeralduiPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    switch call.method {
    case "getPlatformVersion":
      result("iOS " + UIDevice.current.systemVersion)
    case "setPayload":
      // TODO Set a FixedPayloadProvider instance to the new value, then send to all in range
//      let payload = call.arguments[0]
      result(true)
    default:
      result(FlutterMethodNotImplemented)
    }
  }
}
