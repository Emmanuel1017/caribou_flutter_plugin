import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'caribou_flutter_plugin_platform_interface.dart';

/// An implementation of [caribouPluginPlatform] that uses method channels.
class MethodChannelcaribouPlugin extends caribouPluginPlatform {
  /// The method channel used to interact with the native platform.

  final methodChannel = const MethodChannel('caribou_flutter_plugin');

  // Future<bool?> getPlatformVersion() async {
  //   final version = await methodChannel.invokeMethod<bool>('runFFmpegCommand');
  //   return version;
  // }
}
