import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'package:flutter/cupertino.dart';

class GetCoins extends StatefulWidget {
  const GetCoins({Key? key}) : super(key: key);

  @override
  State<GetCoins> createState() => _GetCoinsState();
}

class _GetCoinsState extends State<GetCoins> {

  dynamic listJsonCoins ;
  
  bool load = true ;

  getIc() async {
    await http.get(Uri.parse('https://data.binance.com/api/v3/ticker/24hr'),
        // headers: <String, String>{
        //   'X-CoinAPI-Key':  '09CA207F-6947-4091-BAFA-BA5578A06B7A',
        //   'Accept':  'application/json',
        // },

    ).then((value) {
      setState(() {
        listJsonCoins = jsonDecode(value.body).toList();
        load = false;
      });
      debugPrint(value.body);
    });

  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getIc();
  }


  @override
  Widget build(BuildContext context) {
    if(!load){

    return ListView.builder(itemBuilder: (BuildContext context, int index) {


        return ItemListCoins(sym: listJsonCoins[index]['symbol']);



});
  }else {
      return Center(child: CircularProgressIndicator());
    }
  }
}

class ItemListCoins extends StatelessWidget {
  final String sym ;

  const ItemListCoins({Key? key, required this.sym}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: double.infinity,
      decoration: BoxDecoration(color:
        Color(0xff090c21),

    ),
    child: Column(children: [
      Row(children: [
        Text(sym,style: TextStyle(color: Colors.white),)

      ],)
    ]),
    );
  }
}
