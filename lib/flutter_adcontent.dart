import 'dart:async';

import 'package:flutter/services.dart';

class FlutterAdcontent {
  static const MethodChannel _channel = MethodChannel('flutter_adcontent');

  static Future<String?> get platformVersion async {
    final String? version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
