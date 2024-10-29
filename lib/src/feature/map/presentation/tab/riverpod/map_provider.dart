import 'package:nagorik_mobile/src/feature/map/domain/entities/location_entity.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'map_provider.g.dart';

@riverpod
class Map extends _$Map {
  @override
  FutureOr<LocationEntity> build() async {
    return const LocationEntity();
  }
}
