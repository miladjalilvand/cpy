import 'package:cyp/home.dart';
import 'package:flutter/material.dart';

class Stage extends StatefulWidget {
  const Stage({Key? key}) : super(key: key);

  @override
  State<Stage> createState() => _StageState();
}

class _StageState extends State<Stage> {

  int cI= 0;

  List wgs= [
    HomePage()

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(width:double.infinity ,height: 42,color: Colors.red,child:
        Row(children: [
          IconButton(onPressed: (){

            setState(() {
              cI = 0;
            });
          }, icon: Icon(Icons.add_chart_rounded))

        ]),),
      body: wgs.elementAt(cI),
    );
  }
}
