// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
//
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return ChangeNotifierProvider(
//       create: (context) => Counter(),
//       child: MaterialApp(
//         title: 'Provider Example',
//         home: MyHomePage(),
//       ),
//     );
//   }
// }
//
// class MyHomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     final counter = Provider.of<Counter>(context);
//
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Provider Example'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Text(
//               'Count: ${counter.count}',
//               style: TextStyle(fontSize: 24.0),
//             ),
//             SizedBox(height: 16.0),
//             ElevatedButton(
//               child: Text('Increment'),
//               onPressed: () {
//                 counter.increment();
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// class Counter with ChangeNotifier {
//   int _count = 0;
//
//   int get count => _count;
//
//   void increment() {
//     _count++;
//     notifyListeners();
//   }
// }
