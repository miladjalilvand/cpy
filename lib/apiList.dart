import 'dart:convert';
import 'package:cyp/graph.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class GetCoins extends StatefulWidget {
  const GetCoins({Key? key}) : super(key: key);

  @override
  State<GetCoins> createState() => _GetCoinsState();
}

class _GetCoinsState extends State<GetCoins> {

  dynamic listJsonCoins ;
  
  bool load = true ;

  getIc() async {
    await http.get(Uri.parse('https://api.wazirx.com/sapi/v1/tickers/24hr'),
        // headers: <String, String>{
        //   'X-CoinAPI-Key':  '09CA207F-6947-4091-BAFA-BA5578A06B7A',
        //   'Accept':  'application/json',
        // },

    ).then((value) {

        setState(() {
          listJsonCoins = jsonDecode(value.body).toList();
          load = false;
        });

      debugPrint(value.statusCode.toString());
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

      return ItemListCoins(lis: listJsonCoins,ind: index,);
});
  }else {
      return Container(
          color: const Color(0xff090c21),
          child: const Center(child: CircularProgressIndicator()));
    }
  }
}

class ItemListCoins extends StatelessWidget {
  final List lis ;
  final int ind ;

  const ItemListCoins({Key? key, required this.lis, required this.ind}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>
        Graph()));
      },
      child: Container(
        height: 120,
        width: double.infinity,
        decoration: const BoxDecoration(color:
          Color(0xff090c21),

      ),
      child: Padding(
        padding: const EdgeInsets.all(6.0),
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Text(lis[ind]['baseAsset'],style: const TextStyle(color: Colors.white),),
            Text(lis[ind]['openPrice'],style: const TextStyle(color: Colors.white),),

          ],)
        ]),
      ),
      ),
    );
  }
}
