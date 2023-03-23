//NAVIGATOR ANIMATION



// class MainScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Main Screen'),
//       ),
//       body: Center(
//         child: ElevatedButton(
//           child: Text('Go to Second Screen'),
//           onPressed: () {
//             Navigator.push(
//               context,
//               PageRouteBuilder(
//                 transitionDuration: Duration(milliseconds: 500),
//                 transitionsBuilder:
//                     (context, animation, secondaryAnimation, child) {
//                   return SlideTransition(
//                     position: Tween(
//                       begin: Offset(1.0, 0.0),
//                       end: Offset.zero,
//                     ).animate(animation),
//                     child: child,
//                   );
//                 },
//                 pageBuilder: (context, animation, secondaryAnimation) =>
//                     SecondScreen(),
//               ),
//             );
//           },
//         ),
//       ),
//     );
//   }
// }
