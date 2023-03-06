import 'package:flutter/material.dart';

import 'apiList.dart';




class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {

    Color bg= Color(0xff090c21);

    return DefaultTabController(
      length: 2,
      child: SafeArea (
          child: NestedScrollView(headerSliverBuilder:
          (BuildContext context, bool innerBoxIsScrolled) {
        return <Widget>[
          SliverAppBar(
            leading: IconButton(onPressed: () {  }, icon: Icon(Icons.person_outline),)
            ,actions: [
               IconButton(onPressed: () {  }, icon: Icon(Icons.person_outline),),
            IconButton(onPressed: () {  }, icon: Icon(Icons.person_outline),)
          ],
            flexibleSpace: FlexibleSpaceBar(background:
            Container(
              decoration: BoxDecoration(
                  color:bg,
              ),),
            ),
            pinned: true,
          ),
          SliverAppBar(backgroundColor:bg,
            expandedHeight: 150,
            flexibleSpace: Padding(
              padding: const EdgeInsets.all(9.0),
              child: FlexibleSpaceBar(

                background:
              Container(height: 501,
                decoration: BoxDecoration(borderRadius: BorderRadius.all(
                    Radius.circular(9)
                ),
                    color: Color(0xb5141b4d)
                ),),
              ),
            ),
            pinned: false,
          )
          ,
          SliverAppBar(
            flexibleSpace: FlexibleSpaceBar(background:
            Container(height: 210,
              decoration: BoxDecoration(
                  color: bg,

              ),child:  Padding(
                padding: const EdgeInsets.only(left: 240.0),
                child: TabBar(tabs: [
                    Icon(Icons.access_alarm_outlined),
                    Icon(Icons.ac_unit_sharp)

                  ],),
              ),),
            ),
            pinned: true,
          )
        ];

      }, body :TabBarView(children: [

        GetCoins(),
        Icon(Icons.ac_unit_sharp)

      ],),

      )),
    );
  }
}


