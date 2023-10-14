import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:location/location.dart';
class mapscreen extends StatefulWidget {
    mapscreen({Key? key,}) : super(key: key);

  @override
  State<mapscreen> createState() => _mapscreenState();
}

class _mapscreenState extends State<mapscreen> {
  MapController mapController = MapController();
   LocationData ?currentLocation;
  Location location = Location();

  @override
  void initState() {
    super.initState();
    location.onLocationChanged.listen((LocationData newLocation) {

      setState(() {
        currentLocation = newLocation;
      });
      _updateMap();
    });
  }

  void _updateMap() {
    if (currentLocation != null) {
      mapController.move(
        LatLng(currentLocation!.latitude ?? 0, currentLocation!.longitude ?? 0),
        10.2,
      );
    }
  }
  @override
  Widget build(BuildContext context) {
    return FlutterMap(
      options: MapOptions(
        initialCenter: LatLng(currentLocation?.latitude ?? 51.509364, currentLocation?.longitude ?? -0.128928),
        initialZoom: 10.2,
      ),
      mapController: mapController,

      children: [
        TileLayer(
          urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
          userAgentPackageName: 'com.example.app',
        ),
        MarkerLayer(
          markers: [
            Marker(
              point: LatLng(currentLocation?.latitude ?? 51.509364, currentLocation?.longitude ?? -0.128928),
              width: 80,
              height: 80,
              child:Icon(
    Icons.location_on
    ) //FlutterLogo(),
            ),
          ],
          
        ),


      ],
    );
  }
}


