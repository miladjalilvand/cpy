import 'package:http/http.dart' as http;

import 'package:flutter/cupertino.dart';

class GetCoins extends StatefulWidget {
  const GetCoins({Key? key}) : super(key: key);

  @override
  State<GetCoins> createState() => _GetCoinsState();
}

class _GetCoinsState extends State<GetCoins> {

  getIc() async {
    await http.get(Uri.parse('https://rest.coinapi.io/v1/exchangerate/BTC/USD'),
        headers: <String, String>{
          'Access-Control-Allow-Origin':  'X-CoinAPI-Key',
          // 'Accept':  'application/json',
        },

    ).then((value) {
      debugPrint(value.toString());
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
    return const Placeholder();
  }
}
