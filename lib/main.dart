import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nagorik_mobile/src/core/config/env_config.dart';
import 'package:nagorik_mobile/src/core/services/navigation/router.dart';
import 'package:nagorik_mobile/src/core/utils/env_validators.dart';

Future<void> main() async {
  // Load environment variables
  await EnvConfig.load();

  // Validate required environment variables
  EnvValidator.validateMapConfiguration();

  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MediaQuery.withClampedTextScaling(
      maxScaleFactor: 1.5,
      child: MaterialApp.router(
        theme: ThemeData(
          scaffoldBackgroundColor: const Color(0xFFFFFFFF),
          colorScheme: const ColorScheme.light(
            primary: Color(0xFF172B24),
            onPrimary: Color(0xFFFFFFFF),
            secondary: Color(0xFF172B24),
            onSecondary: Color(0xFFFFFFFF),
            onSecondaryContainer: Color(0xFFC4CAC8),
          ),
          appBarTheme: const AppBarTheme(
            backgroundColor: Color(0x0A172B24),
            elevation: 0,
            iconTheme: IconThemeData(
              color: Color(0xFF172B24),
            ),
            titleTextStyle: TextStyle(
              color: Color(0xFF172B24),
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
          bottomNavigationBarTheme: const BottomNavigationBarThemeData(
            elevation: 0,
            backgroundColor: Color(0x0A172B24),
            selectedItemColor: Color(0xFF172B24),
            unselectedItemColor: Color(0xFFC4CAC8),
            type: BottomNavigationBarType.fixed,
          ),
          progressIndicatorTheme: const ProgressIndicatorThemeData(
            color: Color(0xFFFFFFFF),
          ),
          filledButtonTheme: const FilledButtonThemeData(
            style: ButtonStyle(
              textStyle: WidgetStatePropertyAll(
                TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              minimumSize: WidgetStatePropertyAll(
                Size(double.infinity, 48),
              ),
            ),
          ),
          inputDecorationTheme: InputDecorationTheme(
            filled: true,
            hintStyle: TextStyle(
              fontSize: 16,
              color: Colors.grey.shade500,
            ),
            contentPadding: const EdgeInsets.symmetric(
              vertical: 12,
              horizontal: 16,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(
                color: Color(0xFFC4CAC8),
                width: 1,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(
                color: Color(0xFFC4CAC8),
                width: 1,
              ),
            ),
            disabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(
                // color: color.disabledBorder,
                width: 1,
              ),
            ),
          ),
        ),
        routerConfig: ref.read(goRouterProvider),
      ),
    );
  }
}
