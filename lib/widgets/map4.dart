import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:location/location.dart';
import 'package:latlong2/latlong.dart';

import 'model.dart';

class MapScreen4 extends StatefulWidget {
  @override
  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen4> {
  MapController mapController = MapController();
  Location location = Location();
  LatLng userLocation = LatLng(0.0, 0.0);
  List<Marker> markers = [];
  List<LatLng> polygonCoordinates = [];
  double zoomLevel = 15.0;
  double rotationAngle = 0.0; // Initialize rotation angle to 0 degrees

  @override
  void initState() {
    super.initState();
    _setupLocationListener();
  }

  void _setupLocationListener() {
    location.onLocationChanged.listen((LocationData locationData) {
      setState(() {
        userLocation = LatLng(locationData.latitude!, locationData.longitude!);
        markers = [
          Marker(
            width: 80.0,
            height: 80.0,
            point: userLocation,
            child: Container(
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Icon(
                    Icons.circle_outlined,
                    size: 40,
                    color: Colors.blue.withOpacity(0.5),
                  ),
                  Icon(
                    Icons.circle,
                    size: 20,
                    color: Colors.white,
                  ),
                  Icon(
                    Icons.circle,
                    size: 10,
                    color: Colors.blue,
                  ),
                ],
              ),
            ),
          ),
        ];

        polygonCoordinates = [
          LatLng(userLocation.latitude + 0.001, userLocation.longitude + 0.001),
          LatLng(userLocation.latitude - 0.001, userLocation.longitude + 0.001),
          LatLng(userLocation.latitude - 0.001, userLocation.longitude - 0.001),
          LatLng(userLocation.latitude + 0.001, userLocation.longitude - 0.001),
        ];
      });

      mapController.moveAndRotate(userLocation, zoomLevel, rotationAngle);
    });
  }

  void _toggleRotation() {
    setState(() {
      // Toggle between 0 and 45 degrees for rotation
      rotationAngle = rotationAngle == 0.0 ? 45.0 : 0.0;
      mapController.moveAndRotate(userLocation, zoomLevel, rotationAngle);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Map'),
      ),
      body: Column(
        children: [
          Container(
            height: 400,
            child: FlutterMap(
              children: [
                TileLayer(
                  urlTemplate: "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
                  subdomains: ['a', 'b', 'c'],
                ),
                MarkerLayer(
                  markers: markers,
                  rotate: true,
                ),
                PolygonLayer(
                  polygons: [
                    Polygon(
                      points: polygonCoordinates,
                      borderStrokeWidth: 2,
                      borderColor: Colors.blue,
                    ),
                  ],
                ),
              ],
              options: MapOptions(
                onTap: (p, pl) {
                  // Handle map tap events here
                },
                center: userLocation,
                zoom: zoomLevel,
                initialRotation: rotationAngle, // Set the rotation angle here
              ),
              mapController: mapController,
            ),
          ),
          ElevatedButton(
            onPressed: _toggleRotation,
            child: Text(rotationAngle == 0.0 ? 'Enable Rotation' : 'Disable Rotation'),
          ),
        ],
      ),
    );
  }
}
