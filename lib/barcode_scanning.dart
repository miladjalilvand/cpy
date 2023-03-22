// import 'package:flutter/material.dart';
// import 'package:barcode_scan/barcode_scan.dart';
// import 'package:flutter/services.dart';
//
// void main() => runApp(MyApp());
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Barcode Scanner',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: MyHomePage(),
//     );
//   }
// }
//
// class MyHomePage extends StatefulWidget {
//   MyHomePage({Key key}) : super(key: key);
//
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   String _barcode = "Scan a barcode";
//
//   Future<void> _scanBarcode() async {
//     try {
//       String barcode = await BarcodeScanner.scan();
//       setState(() => _barcode = barcode);
//     } on PlatformException catch (e) {
//       if (e.code == BarcodeScanner.cameraAccessDenied) {
//         setState(() => _barcode = "Camera permission denied");
//       } else {
//         setState(() => _barcode = "Unknown error: $e");
//       }
//     } on FormatException {
//       setState(() => _barcode = "User exited the scanner");
//     } catch (e) {
//       setState(() => _barcode = "Unknown error: $e");
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Barcode Scanner'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Text(
//               _barcode,
//               style: TextStyle(fontSize: 18.0),
//             ),
//             SizedBox(height: 20.0),
//             RaisedButton(
//               onPressed: _scanBarcode,
//               child: Text('Scan Barcode'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
