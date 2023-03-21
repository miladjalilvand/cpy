// dependencies:
// flutter:
// sdk: flutter
// audioplayers: ^0.19.1
// import 'package:flutter/material.dart';
// import 'package:audioplayers/audioplayers.dart';
// class MusicPlayer extends StatefulWidget {
//   const MusicPlayer({Key? key}) : super(key: key);
//
//   @override
//   _MusicPlayerState createState() => _MusicPlayerState();
// }
//
// class _MusicPlayerState extends State<MusicPlayer> {
//   AudioPlayer _audioPlayer = AudioPlayer();
//
//   @override
//   void initState() {
//     super.initState();
//   }
//
//   @override
//   void dispose() {
//     _audioPlayer.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Music Player'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             IconButton(
//               icon: Icon(Icons.play_arrow),
//               onPressed: () async {
//                 await _audioPlayer.play('https://my-audio-url.com/song.mp3');
//               },
//             ),
//             IconButton(
//               icon: Icon(Icons.pause),
//               onPressed: () async {
//                 await _audioPlayer.pause();
//               },
//             ),
//             IconButton(
//               icon: Icon(Icons.stop),
//               onPressed: () async {
//                 await _audioPlayer.stop();
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
// class MusicPlayer extends StatefulWidget {
//   const MusicPlayer({Key? key}) : super(key: key);
//
//   @override
//   _MusicPlayerState createState() => _MusicPlayerState();
// }
//
// class _MusicPlayerState extends State<MusicPlayer> {
//   AudioPlayer _audioPlayer = AudioPlayer();
//
//   @override
//   void initState() {
//     super.initState();
//   }
//
//   @override
//   void dispose() {
//     _audioPlayer.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Music Player'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             IconButton(
//               icon: Icon(Icons.play_arrow),
//               onPressed: () async {
//                 await _audioPlayer.play('https://my-audio-url.com/song.mp3');
//               },
//             ),
//             IconButton(
//               icon: Icon(Icons.pause),
//               onPressed: () async {
//                 await _audioPlayer.pause();
//               },
//             ),
//             IconButton(
//               icon: Icon(Icons.stop),
//               onPressed: () async {
//                 await _audioPlayer.stop();
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
