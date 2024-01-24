import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_adcontent/flutter_adcontent.dart';
import 'package:flutter_adcontent/flutter_adcontent_platform_interface.dart';
import 'package:flutter_adcontent/flutter_adcontent_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockFlutterAdcontentPlatform
    with MockPlatformInterfaceMixin
    implements FlutterAdcontentPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final FlutterAdcontentPlatform initialPlatform = FlutterAdcontentPlatform.instance;

  test('$MethodChannelFlutterAdcontent is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelFlutterAdcontent>());
  });

  test('getPlatformVersion', () async {
    FlutterAdcontent flutterAdcontentPlugin = FlutterAdcontent();
    MockFlutterAdcontentPlatform fakePlatform = MockFlutterAdcontentPlatform();
    FlutterAdcontentPlatform.instance = fakePlatform;

    expect(await flutterAdcontentPlugin.getPlatformVersion(), '42');
  });
}
