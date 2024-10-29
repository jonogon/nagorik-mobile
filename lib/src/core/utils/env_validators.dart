import 'package:nagorik_mobile/src/core/config/env_config.dart';
import 'package:nagorik_mobile/src/core/extensions/env_exception.dart';

class EnvValidator {
  static void validateMapConfiguration() {
    if (EnvConfig.apiKey.isEmpty) {
      throw const EnvException('MAP_API_KEY is not configured');
    }
    if (EnvConfig.styleId.isEmpty) {
      throw const EnvException('MAP_STYLE is not configured');
    }
    if (EnvConfig.baseUrl.isEmpty) {
      throw const EnvException('MAP_BASE_URL is not configured');
    }
  }
}
