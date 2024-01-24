import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'flutter_adcontent_method_channel.dart';

abstract class FlutterAdcontentPlatform extends PlatformInterface {
  /// Constructs a FlutterAdcontentPlatform.
  FlutterAdcontentPlatform() : super(token: _token);

  static final Object _token = Object();

  static FlutterAdcontentPlatform _instance = MethodChannelFlutterAdcontent();

  /// The default instance of [FlutterAdcontentPlatform] to use.
  ///
  /// Defaults to [MethodChannelFlutterAdcontent].
  static FlutterAdcontentPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [FlutterAdcontentPlatform] when
  /// they register themselves.
  static set instance(FlutterAdcontentPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
