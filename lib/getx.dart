// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
//
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return GetMaterialApp(
//       title: 'GetX Example',
//       home: MyHomePage(),
//     );
//   }
// }
//
// class MyHomePage extends StatelessWidget {
//   final count = 0.obs; // Make count observable
//
//   void increment() {
//     count.value++;
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('GetX Example'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Obx(() => Text(
//               'Count: ${count.value}', // Automatically update when count changes
//               style: TextStyle(fontSize: 24.0),
//             )),
//             SizedBox(height: 16.0),
//             ElevatedButton(
//               child: Text('Increment'),
//               onPressed: increment,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
