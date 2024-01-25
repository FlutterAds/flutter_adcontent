#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint flutter_adcontent.podspec` to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'flutter_adcontent'
  s.version          = '0.0.2'
  s.summary          = '一款优质的穿山甲内容输出插件，支持「短剧」和「小视频」'
  s.description      = <<-DESC
  Flutter 穿山甲-内容输出，支持「短剧」和「小视频」
                       DESC
  s.homepage         = 'https://github.com/FlutterAds'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'FlutterAds' => 'https://github.com/FlutterAds' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.public_header_files = 'Classes/**/*.h'
  s.dependency 'Flutter'
  s.platform = :ios, '11.0'

  # Flutter.framework does not contain a i386 slice.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
end
