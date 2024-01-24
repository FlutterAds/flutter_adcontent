
import 'flutter_adcontent_platform_interface.dart';

class FlutterAdcontent {
  Future<String?> getPlatformVersion() {
    return FlutterAdcontentPlatform.instance.getPlatformVersion();
  }
}
