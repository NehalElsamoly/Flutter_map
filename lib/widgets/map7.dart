// import 'package:flutter/material.dart';
// import 'package:flutter_map/flutter_map.dart';
// import 'package:location/location.dart';
// import 'package:latlong2/latlong.dart';
//
// import 'model.dart';
//
//
// class MapScreen7 extends StatefulWidget {
//   @override
//   _MapScreenState createState() => _MapScreenState();
// }
//
// class _MapScreenState extends State<MapScreen7> {
//   MapController mapController = MapController();
//   Location location = Location();
//   LatLng userLocation = LatLng(0.0, 0.0);
//   List<Marker> markers = [];
//   List<LatLng> polygonCoordinates = [];
//
//   @override
//   void initState() {
//     super.initState();
//     _setupLocationListener();
//   }
//
//   void _setupLocationListener() {
//     location.onLocationChanged.listen((LocationData locationData) {
//       setState(() {
//         userLocation = LatLng(locationData.latitude!, locationData.longitude!);
//         markers = [
//           Marker(
//               width: 80.0,
//               height: 80.0,
//               point: userLocation,
//               child:  Icon(Icons.location_on)),
//         ];
//
//         polygonCoordinates = [
//           LatLng(userLocation.latitude + 0.001, userLocation.longitude + 0.001),
//           LatLng(userLocation.latitude - 0.001, userLocation.longitude + 0.001),
//           LatLng(userLocation.latitude - 0.001, userLocation.longitude - 0.001),
//           LatLng(userLocation.latitude + 0.001, userLocation.longitude - 0.001),
//         ];
//       });
//
//       mapController.move(userLocation, 15);
//     });
//   }
//
//   void _onMarkerTapped(LatLng tappedPoint, MapPosition tapPosition) {
//     showDialog(
//       context: context,
//       builder: (BuildContext context) {
//         return AlertDialog(
//           title: Text('Marker Tapped'),
//           content: Column(
//             mainAxisSize: MainAxisSize.min,
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text(
//                   'You tapped on a point at ${tappedPoint.latitude}, ${tappedPoint.longitude}'),
//             ],
//           ),
//           actions: <Widget>[
//             TextButton(
//               child: Text('Close'),
//               onPressed: () {
//                 Navigator.of(context).pop();
//               },
//             ),
//           ],
//         );
//       },
//     );
//   }
//   void _toggleRotation() {
//     setState(() {
//       rotationAngle = rotationAngle == 0.0 ? 45.0 : 0.0;
//       mapController.moveAndRotate(userLocation, zoomLevel, rotationAngle);
//     });
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Map'),
//       ),
//       body: FlutterMap(
//         options: MapOptions(
//           onTap: (p, pl) {
//             _onMarkerTapped(pl as LatLng, MapPosition());
//           },
//           center: userLocation,
//           zoom: 20,
//         ),
//         mapController: mapController,
//         children: [
//           TileLayer(
//             urlTemplate: "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
//             subdomains: ['a', 'b', 'c'],
//           ),
//           MarkerLayer(
//             markers: [
//               Marker(
//                   width: 80.0,
//                   height: 80.0,
//                   point: userLocation,
//                   child:  Icon(Icons.location_on))
//             ],
//             rotate: true,
//           ),
//           PolygonLayer(
//             polygons: [
//               Polygon(
//                 points: polygonCoordinates,
//                 borderStrokeWidth: 2,
//                 borderColor: Colors.blue,
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }
//
// List<Marker> getMarker() {
//   return List<Marker>.from(FackeData().fackedata.map((e) => Marker(
//       point: LatLng(e.latitude!, e.longitude!),
//       child: Icon(Icons.location_on_outlined))));
// }