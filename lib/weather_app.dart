// import 'package:flutter/material.dart';
// import 'package:flutter/cupertino.dart';
// import 'dart:async';
// import 'dart:convert';
// import 'package:http/http.dart' as http;
//
// void main() {
//   runApp(WeatherApp());
// }
//
// class WeatherApp extends StatefulWidget {
//   @override
//   _WeatherAppState createState() => _WeatherAppState();
// }
//
// class _WeatherAppState extends State<WeatherApp> with SingleTickerProviderStateMixin {
//   AnimationController _controller;
//   Animation<double> _animation;
//
//   String _location = 'New York, NY';
//   String _weather = '';
//   int _temperature = 0;
//   String _iconUrl = '';
//
//   @override
//   void initState() {
//     super.initState();
//
//     _controller = AnimationController(
//       duration: const Duration(milliseconds: 1000),
//       vsync: this,
//     )..repeat(reverse: true);
//
//     _animation = Tween<double>(
//       begin: 0.0,
//       end: 1.0,
//     ).animate(_controller);
//
//     _getLocationWeather();
//   }
//
//   Future<void> _getLocationWeather() async {
//     final response = await http.get(Uri.parse(
//         'https://api.openweathermap.org/data/2.5/weather?q=$_location&appid=YOUR_API_KEY&units=imperial'));
//
//     if (response.statusCode == 200) {
//       final jsonResponse = json.decode(response.body);
//       setState(() {
//         _weather = jsonResponse['weather'][0]['main'];
//         _temperature = jsonResponse['main']['temp'].round();
//         _iconUrl = 'http://openweathermap.org/img/w/${jsonResponse['weather'][0]['icon']}.png';
//       });
//     } else {
//       print('Request failed with status: ${response.statusCode}.');
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Weather App',
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Weather App'),
//         ),
//         body: Column(
//           children: [
//             SizedBox(
//               height: 32,
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Text(
//                   '$_temperature',
//                   style: TextStyle(
//                     fontSize: 64,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//                 SizedBox(
//                   width: 16,
//                 ),
//                 Image.network(
//                   _iconUrl,
//                   height: 64,
//                   width: 64,
//                 ),
//               ],
//             ),
//             SizedBox(
//               height: 16,
//             ),
//             Text(
//               _weather,
//               style: TextStyle(
//                 fontSize: 24,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             SizedBox(
//               height: 32,
//             ),
//             CupertinoTextField(
//               padding: EdgeInsets.all(16),
//               placeholder: 'Enter location',
//               onChanged: (value) {
//                 _location = value;
//               },
//               onSubmitted: (value) {
//                 _getLocationWeather();
//               },
//             ),
//             SizedBox(
//               height: 32,
//             ),
//             RotationTransition(
//               turns: _animation,
//               child: Icon(Icons.arrow_downward),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
//
//   @override
//   void dispose() {
//     _controller.dispose();
//     super.dispose();
//   }
// }
