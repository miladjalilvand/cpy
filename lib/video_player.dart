// import 'package:flutter/material.dart';
// import 'package:video_player/video_player.dart';
//
// void main() => runApp(VideoPlayerApp());
//
// class VideoPlayerApp extends StatefulWidget {
//   @override
//   _VideoPlayerAppState createState() => _VideoPlayerAppState();
// }
//
// class _VideoPlayerAppState extends State<VideoPlayerApp> {
//   VideoPlayerController _controller;
//   bool _isPlaying = false;
//
//   @override
//   void initState() {
//     super.initState();
//     _controller = VideoPlayerController.network(
//         'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4')
//       ..addListener(() {
//         final bool isPlaying = _controller.value.isPlaying;
//         if (isPlaying != _isPlaying) {
//           setState(() {
//             _isPlaying = isPlaying;
//           });
//         }
//       });
//   }
//
//   @override
//   void dispose() {
//     super.dispose();
//     _controller.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Video Player App'),
//         ),
//         body: Center(
//           child: AspectRatio(
//             aspectRatio: _controller.value.aspectRatio,
//             child: Stack(
//               alignment: Alignment.bottomCenter,
//               children: <Widget>[
//                 VideoPlayer(_controller),
//                 _ControlsOverlay(controller: _controller),
//                 VideoProgressIndicator(_controller, allowScrubbing: true),
//               ],
//             ),
//           ),
//         ),
//         floatingActionButton: FloatingActionButton(
//           onPressed: () {
//             setState(() {
//               _controller.value.isPlaying
//                   ? _controller.pause()
//                   : _controller.play();
//             });
//           },
//           child: Icon(
//             _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
//           ),
//         ),
//       ),
//     );
//   }
// }
//
// class _ControlsOverlay extends StatelessWidget {
//   const _ControlsOverlay({Key key, this.controller}) : super(key: key);
//
//   final VideoPlayerController controller;
//
//   @override
//   Widget build(BuildContext context) {
//     return Stack(
//       children: [
//         AnimatedOpacity(
//           opacity: controller.value.isControlsVisible ? 1.0 : 0.0,
//           duration: Duration(milliseconds: 300),
//           child: Container(
//             decoration: BoxDecoration(
//               gradient: LinearGradient(
//                 begin: Alignment.topCenter,
//                 end: Alignment.bottomCenter,
//                 colors: [
//                   Color.fromRGBO(0, 0, 0, 0.4),
//                   Color.fromRGBO(0, 0, 0, 0.1),
//                 ],
//               ),
//             ),
//             padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 IconButton(
//                   icon: Icon(Icons.replay_10),
//                   onPressed: () {
//                     final position = controller.value.position;
//                     controller.seekTo(position - Duration(seconds: 10));
//                   },
//                 ),
//                 IconButton(
//                   icon: Icon(controller.value.isPlaying
//                       ? Icons.pause
//                       : Icons.play_arrow),
//                   onPressed: () {
//                     controller.value.isPlaying ? controller.pause() : controller.play();
//                   },
//                 ),
//                 IconButton(
//                   icon: Icon(Icons.forward_10),
//                   onPressed: () {
//                     final position = controller.value.position;
//                     controller.seekTo(position + Duration(seconds: 10));
//                   },
//                 ),
//               ],
//             ),
//           ),
//         ),
//         GestureDetector(
//           onTap: () {
//             final isVisible = controller.value.isControlsVisible;
//             controller.toggleControlsVisibility(!isVisible);
//           },
//           child: Container(
//             color: Colors.transparent,
//           ),
//         ),
//       ],
//     );
//   }
// }
