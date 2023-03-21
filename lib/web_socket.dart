// dependencies:
// web_socket_channel: ^2.1.0
// import 'package:web_socket_channel/web_socket_channel.dart';
//
// Listen for incoming messages:
// final channel = WebSocketChannel.connect(Uri.parse('wss://example.com/ws'));
// channel.stream.listen((message) {
// print('Received: $message');
// });
//
// Send messages to the server:
//
// channel.sink.add('Hello, server!');
//
// Close the connection when you're done:
//
// channel.sink.close();
//
// import 'package:flutter/material.dart';
// import 'package:web_socket_channel/web_socket_channel.dart';
//
// void main() => runApp(MyApp());
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'WebSocket Demo',
//       home: MyHomePage(),
//     );
//   }
// }
//
// class MyHomePage extends StatefulWidget {
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   final channel = WebSocketChannel.connect(Uri.parse('wss://example.com/ws'));
//
//   @override
//   void dispose() {
//     channel.sink.close();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('WebSocket Demo'),
//       ),
//       body: Center(
//         child: StreamBuilder(
//           stream: channel.stream,
//           builder: (context, snapshot) {
//             if (snapshot.hasData) {
//               return Text(snapshot.data);
//             } else {
//               return CircularProgressIndicator();
//             }
//           },
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         child: Icon(Icons.send),
//         onPressed: () {
//           channel.sink.add('Hello, server!');
//         },
//       ),
//     );
//   }
// }
