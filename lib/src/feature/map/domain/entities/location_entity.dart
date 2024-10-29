

class LocationEntity {
  final double latitude;
  final double longitude;
  final double zoom;

  const LocationEntity({
    this.latitude = 23.835677,
    this.longitude = 90.38032,
    this.zoom = 12.0,
  });

  // Copy with method
  LocationEntity copyWith({
    double? latitude,
    double? longitude,
    double? zoom,
  }) {
    return LocationEntity(
      latitude: latitude ?? this.latitude,
      longitude: longitude ?? this.longitude,
      zoom: zoom ?? this.zoom,
    );
  }

  // Convert to Map
  Map<String, dynamic> toMap() {
    return {
      'latitude': latitude,
      'longitude': longitude,
      'zoom': zoom,
    };
  }
}
