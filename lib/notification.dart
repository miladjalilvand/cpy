// import 'package:onesignal_flutter/onesignal_flutter.dart';
//
// class MyApp extends StatefulWidget {
//   @override
//   _MyAppState createState() => _MyAppState();
// }
//
// class _MyAppState extends State<MyApp> {
//   @override
//   void initState() {
//     super.initState();
//     OneSignal.shared.init("YOUR_ONESIGNAL_APP_ID");
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     // ...
//   }
// }




// @override
// void initState() {
//   super.initState();
//   OneSignal.shared.init("YOUR_ONESIGNAL_APP_ID");
//
//   OneSignal.shared.setNotificationReceivedHandler((OSNotification notification) {
//     // handle notification received
//   });
//
//   OneSignal.shared.setNotificationOpenedHandler((OSNotificationOpenedResult result) {
//     // handle notification opened
//   });
// }



// void sendNotification() async {
//   var status = await OneSignal.shared.getPermissionSubscriptionState();
//   var playerId = status.subscriptionStatus.userId;
//
//   var notification = OSCreateNotification(
//     playerIds: [playerId],
//     content: "Hello, world!",
//     heading: "New message",
//   );
//
//   await OneSignal.shared.postNotification(notification);
// }
