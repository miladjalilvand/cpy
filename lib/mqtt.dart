// import 'package:flutter/material.dart';
// import 'package:mqtt_client/mqtt_client.dart';
//
// MqttClient client;
// final broker = 'mqtt://broker.example.com';
// final port = 1883;
//
// class MyHomePage extends StatefulWidget {
//   MyHomePage({Key key, this.title}) : super(key: key);
//   final String title;
//
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   List<String> messages = [];
//
//   @override
//   void initState() {
//     super.initState();
//     connect();
//   }
//
//   void connect() async {
//     client = MqttClient(broker, '');
//     client.port = port;
//     client.keepAlivePeriod = 30;
//     client.onConnected = onConnected;
//     client.updates.listen((List<MqttReceivedMessage<MqttMessage>> messages) {
//       final message = MqttPublishMessage.decode(messages[0].payload.message);
//       setState(() {
//         this.messages.add(message.payloadAsString);
//       });
//     });
//     await client.connect();
//   }
//
//   void onConnected() {
//     print('Connected to MQTT broker');
//     subscribe();
//   }
//
//   void subscribe() {
//     client.subscribe('example/topic', MqttQos.atLeastOnce);
//   }
//
//   void publish(String message) {
//     final builder = MqttClientPayloadBuilder();
//     builder.addString(message);
//     client.publishMessage('example/topic', MqttQos.atLeastOnce, builder.payload);
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title),
//       ),
//       body: Column(
//         children: [
//           Expanded(
//             child: ListView.builder(
//               itemCount: messages.length,
//               itemBuilder: (context, index) {
//                 return ListTile(
//                   title: Text(messages[index]),
//                 );
//               },
//             ),
//           ),
//           TextField(
//             decoration: InputDecoration(
//               labelText: 'Enter message',
//             ),
//             onSubmitted: (value) {
//               publish(value);
//             },
//           ),
//         ],
//       ),
//     );
//   }
// }
