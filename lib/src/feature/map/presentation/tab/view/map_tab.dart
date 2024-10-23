import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:maplibre_gl/maplibre_gl.dart';

class MapTab extends StatefulWidget {
  const MapTab({super.key});

  @override
  State<MapTab> createState() => _MapTabState();
}

class _MapTabState extends State<MapTab> {
  CameraPosition initialPosition = const CameraPosition(
    target: LatLng(23.835677, 90.380325),
    zoom: 12,
  ); //CameraPosition object for initial location in map
  MapLibreMapController? mController;

  String mapUrl = '';

  @override
  void initState() {
    super.initState();
    mapUrl = dotenv.env['MAP_API']!;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MapLibreMap(
        initialCameraPosition: initialPosition,
        // set map initial location where map will show first
        onMapCreated: (MapLibreMapController mapController) {
          //called when map object is created
          mController =
              mapController; // use the MaplibreMapController for map operations
        },
        styleString: mapUrl, // barikoi map style url
      ),
    );
  }
}
