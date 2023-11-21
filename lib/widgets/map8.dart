import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:location/location.dart';
import 'package:latlong2/latlong.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'model.dart'; // Import carousel_slider package

class MapScreen8 extends StatefulWidget {
  @override
  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen8> {
  MapController mapController = MapController();
  Location location = Location();
  LatLng userLocation = LatLng(0.0, 0.0);
  List<Marker> markers = [];
  List<LatLng> polygonCoordinates = [];
  double zoomLevel = 15.0;
  double rotationAngle = 0.0;

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
      rotationAngle = rotationAngle == 0.0 ? 45.0 : 0.0;
      mapController.moveAndRotate(userLocation, zoomLevel, rotationAngle);
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
              Text(
                  'You tapped on a point at ${tappedPoint.latitude}, ${tappedPoint.longitude}'),
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
      floatingActionButton: FloatingActionButton(
          onPressed: _toggleRotation, child: Icon(Icons.rotate_right_outlined)),

      body: Column(
        children: [
          Expanded(
            child: FlutterMap(
              children: [
                TileLayer(
                  urlTemplate:
                  "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
                  subdomains: ['a', 'b', 'c'],
                ),
                MarkerLayer(
                  markers:markers,
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
                  _onMarkerTapped(pl as LatLng, MapPosition());
                },
                initialCenter: userLocation,
                initialZoom: zoomLevel,
                initialRotation: rotationAngle,
              ),
              mapController: mapController,
            ),
          ),

          Padding(
          padding: const EdgeInsets.only(bottom: 10),
    child: CarouselSlider(
    items: [1, 2, 3, 4, 5].map((i) {
    return Builder(
    builder: (BuildContext context) {
    return Container(
    width: MediaQuery.of(context).size.width,
    height: 200.0,
    margin: EdgeInsets.symmetric(horizontal: 5.0),
    decoration: BoxDecoration(
    color: Colors.amber,
    ),
    child: Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    Expanded(
    child: Padding(
    padding: const EdgeInsets.all(2.0),
    child: Center(
      child: Image.network(
      "https://media.istockphoto.com/vectors/palestine-flag-vector-id525982638?k=6&m=525982638&s=612x612&w=0&h=MFFRRfBM29S1LfLz3ymObmXv3ieSNAc__jwCnvxnXCM=",
   width: double.infinity   // Use BoxFit.cover to fill the width
      ),
    ),
    ),
    ),
    SizedBox(height: 5),
    Expanded(
    child: Center(
    child: Text(
    'Item $i',
    style: TextStyle(fontSize: 16.0),
    ),
    ),
    ),
    ],
    ),
    );
    },
    );
    }).toList(),
    options: CarouselOptions(
    aspectRatio: 70 / 7,
    viewportFraction: 1,
    autoPlay: true,
    ),
    ),
          ) ],
      ),
    );
  }
}

List<Marker> getMarker() {
  return List<Marker>.from(FackeData().fackedata.map((e) => Marker(
      point: LatLng(e.latitude!, e.longitude!),
      child:  Icon(Icons.location_on_outlined))));
}