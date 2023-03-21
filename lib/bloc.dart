//
// dependencies:
// flutter:
// sdk: flutter
// bloc: ^7.0.0
// flutter_bloc: ^7.0.1
//
// Create a new file called counter_event.dart to represent the events that can happen in your app:
// part of 'counter_bloc.dart';
//
// abstract class CounterEvent extends Equatable {
//   const CounterEvent();
//
//   @override
//   List<Object> get props => [];
// }
//
// class IncrementEvent extends CounterEvent {}
//
// class DecrementEvent extends CounterEvent {}
// Create a new file called counter_state.dart to represent the state of your app:
// part of 'counter_bloc.dart';
//
// abstract class CounterState extends Equatable {
//   final int count;
//
//   const CounterState(this.count);
//
//   @override
//   List<Object> get props => [count];
// }
//
// class CounterInitial extends CounterState {
//   const CounterInitial() : super(0);
// }
//
// class CounterUpdated extends CounterState {
//   const CounterUpdated(int count) : super(count);
// }
//
// Create a new file called counter_bloc.dart to handle the business logic:
// import 'dart:async';
// import 'package:bloc/bloc.dart';
// import 'package:equatable/equatable.dart';
//
// part 'counter_event.dart';
// part 'counter_state.dart';
//
// class CounterBloc extends Bloc<CounterEvent, CounterState> {
//   CounterBloc() : super(CounterInitial());
//
//   @override
//   Stream<CounterState> mapEventToState(CounterEvent event) async* {
//     if (event is IncrementEvent) {
//       yield CounterUpdated(state.count + 1);
//     } else if (event is DecrementEvent) {
//       yield CounterUpdated(state.count - 1);
//     }
//   }
// }
// In your app, wrap your widget tree with a BlocProvider to provide the BLoC instance:
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
//
// import 'counter_bloc.dart';
//
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return BlocProvider(
//       create: (_) => CounterBloc(),
//       child: MaterialApp(
//         title: 'Flutter Bloc Example',
//         home: CounterScreen(),
//       ),
//     );
//   }
// }
//
// class CounterScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Counter')),
//       body: Center(
//         child: BlocBuilder<CounterBloc, CounterState>(
//           builder: (context, state) {
//             return Text(
//               state.count.toString(),
//               style: TextStyle(fontSize: 24),
//             );
//           },
//         ),
//       ),
//       floatingActionButton: Row(
//         mainAxisAlignment: MainAxisAlignment.end,
//         children: [
//           FloatingActionButton(
//             onPressed: () => context.read<CounterBloc>().add(DecrementEvent()),
//             child: Icon(Icons.remove),
//           ),
//           SizedBox(width: 16),
//           FloatingActionButton(
//             onPressed: () => context.read<CounterBloc>().add(IncrementEvent()),
//             child: Icon(Icons.add),
//           ),
//         ],
//       ),
//     );
//   }
// }
// In your app, wrap your widget tree with a BlocProvider to provide the BLoC instance:
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
//
// import 'counter_bloc.dart';
//
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return BlocProvider(
//       create: (_) => CounterBloc(),
//       child: MaterialApp(
//         title: 'Flutter Bloc Example',
//         home: CounterScreen(),
//       ),
//     );
//   }
// }
//
// class CounterScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Counter')),
//       body: Center(
//         child: BlocBuilder<CounterBloc, CounterState>(
//           builder: (context, state) {
//             return Text(
//               state.count.toString(),
//               style: TextStyle(fontSize: 24),
//             );
//           },
//         ),
//       ),
//       floatingActionButton: Row(
//         mainAxisAlignment: MainAxisAlignment.end,
//         children: [
//           FloatingActionButton(
//             onPressed: () => context.read<CounterBloc>().add(DecrementEvent()),
//             child: Icon(Icons.remove),
//           ),
//           SizedBox(width: 16),
//           FloatingActionButton(
//             onPressed: () => context.read<CounterBloc>().add(IncrementEvent()),
//             child: Icon(Icons.add),
//           ),
//         ],
//       ),
//     );
//   }
// }
//
