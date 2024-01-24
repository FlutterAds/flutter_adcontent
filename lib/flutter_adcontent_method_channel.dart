import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'flutter_adcontent_platform_interface.dart';

/// An implementation of [FlutterAdcontentPlatform] that uses method channels.
class MethodChannelFlutterAdcontent extends FlutterAdcontentPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('flutter_adcontent');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
