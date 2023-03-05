import 'package:flutter/material.dart';




class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: SafeArea (
          child: NestedScrollView(headerSliverBuilder:
          (BuildContext context, bool innerBoxIsScrolled) {
        return <Widget>[
          SliverAppBar(
            flexibleSpace: FlexibleSpaceBar(background:
            Container(height: 210,
              decoration: BoxDecoration(
                  color: Colors.black
              ),),
            ),
            pinned: true,
          ),
          SliverAppBar(
            flexibleSpace: FlexibleSpaceBar(background:
            Container(height: 501,
              decoration: BoxDecoration(
                  color: Colors.redAccent
              ),),
            ),
            pinned: false,
          )
          ,
          SliverAppBar(
            flexibleSpace: FlexibleSpaceBar(background:
            Container(height: 210,
              decoration: BoxDecoration(
                  color: Colors.black

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

        Icon(Icons.access_alarm_outlined),
        Icon(Icons.ac_unit_sharp)

      ],),

      )),
    );
  }
}


