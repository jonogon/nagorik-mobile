import 'package:maplibre_gl/maplibre_gl.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'map_controller_provider.g.dart';

@riverpod
class MapController extends _$MapController {
  @override
  MapLibreMapController? build() => null;

  void setController(MapLibreMapController controller) {
    state = controller;
  }
}
