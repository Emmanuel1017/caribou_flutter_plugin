import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'caribou_flutter_plugin_method_channel.dart';

abstract class caribouPluginPlatform extends PlatformInterface {
  /// Constructs a caribouPluginPlatform.
  caribouPluginPlatform() : super(token: _token);

  static final Object _token = Object();

  static caribouPluginPlatform _instance = MethodChannelcaribouPlugin();

  /// The default instance of [caribouPluginPlatform] to use.
  ///
  /// Defaults to [MethodChannelcaribouPlugin].
  static caribouPluginPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [caribouPluginPlatform] when
  /// they register themselves.
  static set instance(caribouPluginPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }
}
