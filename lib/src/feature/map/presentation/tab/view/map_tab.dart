import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:maplibre_gl/maplibre_gl.dart';
import 'package:nagorik_mobile/src/core/config/env_config.dart';
import 'package:nagorik_mobile/src/feature/map/presentation/tab/riverpod/map_controller_provider.dart';
import 'package:nagorik_mobile/src/feature/map/presentation/tab/riverpod/map_provider.dart';

class MapTab extends ConsumerStatefulWidget {
  const MapTab({super.key});

  @override
  ConsumerState<MapTab> createState() => _MapTabState();
}

class _MapTabState extends ConsumerState<MapTab> {
  @override
  Widget build(BuildContext context) {
    final locationAsync = ref.watch(mapProvider);

    return Scaffold(
      body: locationAsync.when(
        loading: () => const Center(
          child: CircularProgressIndicator(),
        ),
        error: (error, stack) => Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.error_outline,
                color: Colors.red,
                size: 48,
              ),
              const SizedBox(height: 16),
              Text(
                'Error: $error',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.titleMedium,
              ),
              const SizedBox(height: 8),
              ElevatedButton(
                onPressed: () {
                  ref.invalidate(mapControllerProvider);
                },
                child: const Text('Retry'),
              ),
            ],
          ),
        ),
        data: (location) => MapLibreMap(
          initialCameraPosition: CameraPosition(
            target: LatLng(location.latitude, location.longitude),
            zoom: location.zoom,
          ),
          onMapCreated: (MapLibreMapController controller) {
            ref.read(mapControllerProvider.notifier).setController(controller);
          },
          styleString: EnvConfig.mapUrl,
          myLocationEnabled: true,
        ),
      ),
    );
  }
}
