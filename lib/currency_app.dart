// class Currency {
//   String name;
//   String code;
//   double rate;
//
//   Currency({required this.name, required this.code, required this.rate});
// }
// import 'dart:convert';
// import 'package:http/http.dart' as http;
// Now, create a new file called api.dart. In this file, create a class called CurrencyApi that will handle making HTTP requests to retrieve data about the currencies. Here's an example of what this class could look like:
// class CurrencyApi {
//   static const String _baseUrl = 'https://api.exchangerate-api.com';
//
//   Future<Map<String, dynamic>> getCurrencies() async {
//     final response = await http.get(Uri.parse('$_baseUrl/v6/latest/IRR'));
//     final data = jsonDecode(response.body);
//     return data['conversion_rates'];
//   }
// }
// to retrieve data about the currencies. The response will be in JSON format, so we use jsonDecode to convert it into a map.
//
// Now, create a new file called home_screen.dart. In this file, create a StatefulWidget called HomeScreen. In the build method of this widget, use the FutureBuilder widget to retrieve the data from the API and display it on the screen. Here's an example of what this code could look like:
// dart
// import 'package:flutter/material.dart';
//
// import 'currency.dart';
// import 'api.dart';
//
// class HomeScreen extends StatefulWidget {
//   const HomeScreen({Key? key}) : super(key: key);
//
//   @override
//   _HomeScreenState createState() => _HomeScreenState();
// }
//
// class _HomeScreenState extends State<HomeScreen> {
//   final CurrencyApi _api = CurrencyApi();
//
//   Future<Map<String, dynamic>>? _currenciesFuture;
//
//   @override
//   void initState() {
//     super.initState();
//     _currenciesFuture = _api.getCurrencies();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Iran Currency'),
//       ),
//       body: Center(
//         child: FutureBuilder<Map<String, dynamic>>(
//           future: _currenciesFuture,
//           builder: (context, snapshot) {
//             if (snapshot.connectionState == ConnectionState.waiting) {
//               return const CircularProgressIndicator();
//             }
//
//             if (snapshot.hasError) {
//               return const Text('An error occurred.');
//             }
//
//             final currencies = <Currency>[];
//             snapshot.data!.forEach((code, rate) {
//               currencies.add(Currency(
//                 name: '',
//                 code: code,
//                 rate: rate,
//               ));
//             });
//
//             return ListView.builder(
//               itemCount: currencies.length,
//               itemBuilder: (context, index) {
//                 final currency = currencies[index];
//                 return ListTile(
//                   title: Text('${currency.code} - ${currency.name}'),
//                   subtitle: Text(currency.rate.toString()),
//                 );
//               },
//             );
//           },
//         ),
//       ),
//     );
//   }
// }
