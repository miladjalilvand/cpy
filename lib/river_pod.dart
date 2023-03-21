//
// import 'package:flutter_riverpod/flutter_riverpod.dart';
//
// final counterProvider = StateProvider((ref) => 0);
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return ProviderScope(
//       child: MaterialApp(
//         home: Scaffold(
//           appBar: AppBar(
//             title: Text('Riverpod Example'),
//           ),
//           body: Center(
//             child: Consumer(builder: (context, watch, child) {
//               final count = watch(counterProvider).state;
//               return Text(
//                 '$count',
//                 style: TextStyle(fontSize: 48),
//               );
//             }),
//           ),
//           floatingActionButton: FloatingActionButton(
//             onPressed: () => context.read(counterProvider).state++,
//             child: Icon(Icons.add),
//           ),
//         ),
//       ),
//     );
//   }
// }



//
// dependencies:
// flutter_riverpod: ^1.0.3
// riverpod: ^1.0.3
//
//
// import 'package:flutter_riverpod/flutter_riverpod.dart';
//
// class NoteList extends StateNotifier<List<String>> {
//   NoteList() : super([]);
//
//   void add(String note) {
//     state = [...state, note];
//   }
//
//   void remove(int index) {
//     state = List.from(state)..removeAt(index);
//   }
// }
//
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'note_provider.dart';
//
// void main() {
//   runApp(
//     ProviderScope(
//       child: MyApp(),
//     ),
//   );
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'My Note App',
//       home: MyHomePage(),
//     );
//   }
// }
//
//
//
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'note_provider.dart';
//
// class MyHomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: Text('My Notes'),
//         ),
//         body: Consumer(
//           builder: (context, watch, _) {
//             final notes = watch(noteListProvider.state);
//
//             return ListView.builder(
//               itemCount: notes.length,
//               itemBuilder: (context, index) {
//                 return ListTile(
//                   title: Text(notes[index]),
//                   trailing: IconButton(
//                     icon: Icon(Icons.delete),
//                     onPressed: () {
//                       context.read(noteListProvider).remove(index);
//                     },
//                   ),
//                 );
//               },
//             );
//           },
//         ),
//         floatingActionButton: FloatingActionButton(
//         onPressed: () async {
//       final result = await showDialog(
//         context: context,
//         builder: (context) {
//           return AlertDialog(
//             title: Text('New Note'),
//             content: TextField(),
//             actions: [
//               TextButton(
//                 child: Text('Cancel'),
//                 onPressed: () => Navigator.pop(context),
//               ),
//               ElevatedButton(
//                 child: Text('Save'),
//                 onPressed: () {
//                   final note = context.read(noteListProvider);
//                   note.add(context.read(TextEditingController()).text);
//                   Navigator.pop(context, true);
//                 },
//               ),
//             ],
//           );
//         },
//       );
//
//       if (result == true) {
//         ScaffoldMessenger.of(context).showSnackBar(SnackBar(
//           content: Text('Note added'),
//         ));
//       }
//     },
//     child: Icon(Icons.add
//
//
