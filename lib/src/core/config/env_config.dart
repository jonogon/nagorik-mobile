import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'env_config.g.dart';

class EnvConfig {
  static String get apiKey => dotenv.env['MAP_API_KEY'] ?? '';

  static String get styleId => dotenv.env['MAP_STYLE'] ?? '';

  static String get baseUrl => dotenv.env['MAP_BASE_URL'] ?? '';

  static String get mapUrl => '$baseUrl/$styleId/style.json?key=$apiKey';

  static Future<void> load() async {
    await dotenv.load();
  }
}

@riverpod
EnvConfig envConfig(EnvConfigRef ref) {
  return EnvConfig();
}
