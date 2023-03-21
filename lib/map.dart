// Add the google_maps_flutter dependency to your pubspec.yaml file:
// dependencies:
// google_maps_flutter: ^1.2.0
// Add your Google Maps API key to your AndroidManifest.xml and Info.plist files (for Android and iOS, respectively). You can obtain a Maps API key by following the instructions in the Google Maps Platform documentation.
//
// Import the google_maps_flutter package in your Dart code:
// import 'package:google_maps_flutter/google_maps_flutter.dart';
// GoogleMap(
// mapType: MapType.normal,
// initialCameraPosition: CameraPosition(
// target: LatLng(37.77483, -122.41942),
// zoom: 12,
// ),
// onMapCreated: (GoogleMapController controller) {
// // use the controller to interact with the map
// },
// )
// GoogleMap(
// mapType: MapType.normal,
// initialCameraPosition: CameraPosition(
// target: LatLng(37.77483, -122.41942),
// zoom: 12,
// ),
// onMapCreated: (GoogleMapController controller) {
// // use the controller to interact with the map
// },
// )

//
//
//
// import 'package:flutter/material.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';
//
// class MapScreen extends StatefulWidget {
//   @override
//   _MapScreenState createState() => _MapScreenState();
// }
//
// class _MapScreenState extends State<MapScreen> {
//   GoogleMapController mapController;
//   final List<Marker> markers = [];
//
//   void _onMapCreated(GoogleMapController controller) {
//     mapController = controller;
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     markers.add(Marker(
//         markerId: MarkerId("1"),
//         position: LatLng(37.4219999,-122.0840575),
//         infoWindow: InfoWindow(title: "Googleplex")));
//
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Map Screen"),
//       ),
//       body: GoogleMap(
//         onMapCreated: _onMapCreated,
//         initialCameraPosition: CameraPosition(
//           target: LatLng(37.4219999,-122.0840575),
//           zoom: 10,
//         ),
//         markers: Set.from(markers),
//       ),
//     );
//   }
// }
