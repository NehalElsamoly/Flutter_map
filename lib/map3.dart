import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:location/location.dart';
import 'package:latlong2/latlong.dart';

import 'model.dart';

class MapScreen extends StatefulWidget {
  @override
  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  MapController mapController = MapController();
  Location location = Location();
  LatLng userLocation = LatLng(0.0, 0.0);
  List<Marker> markers = [];
  List<LatLng> polygonCoordinates = [];

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
            child:
               Container(
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
              )

          ),
        ];

        polygonCoordinates = [
          LatLng(userLocation.latitude + 0.001, userLocation.longitude + 0.001),
          LatLng(userLocation.latitude - 0.001, userLocation.longitude + 0.001),
          LatLng(userLocation.latitude - 0.001, userLocation.longitude - 0.001),
          LatLng(userLocation.latitude + 0.001, userLocation.longitude - 0.001),
        ];
      });

      mapController.moveAndRotate(userLocation, 15, 90);
    });
  }

  void _onMarkerTapped(LatLng tappedPoint, MapPosition tapPosition) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Marker Tapped'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('You tapped on a point at ${tappedPoint.latitude}, ${tappedPoint.longitude}'),
            ],
          ),
          actions: <Widget>[
            TextButton(
              child: Text('Close'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Map'),
      ),
      body: FlutterMap(
        children: [
          TileLayer(
            urlTemplate: "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
            subdomains: ['a', 'b', 'c'],
          ),
          MarkerLayer(
            markers: getMarker(),
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
            _onMarkerTapped(pl as LatLng, p as MapPosition);
          },
          initialCenter: userLocation,
          initialZoom: 20,
        ),
        mapController: mapController,
      ),
    );
  }
}
List<Marker> getMarker() {
  return List<Marker>.from(FackeData().fackedata.map((e) => Marker(
      point: LatLng(e.latitude!, e.longitude!),
      child: Icon(Icons.location_on_outlined))));
}