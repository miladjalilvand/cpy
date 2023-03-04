import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int chanegTab = 0;
List tabs= [
  Icon(Icons.access_alarm_outlined),
  Icon(Icons.ac_unit_sharp)
];
  @override
  Widget build(BuildContext context) {
    return    DefaultTabController(length: 2, child: Scaffold(
      backgroundColor: Color(0xffb74093),
      // appBar: TabBar(tabs: [
      //   Text('Watchlist'),
      //   Text('Coins'),
      //
      // ],),
      body:CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,

            expandedHeight: 160.0,
            bottom:  TabBar(tabs: [
               Tab(text: 'Tab 1',child: GestureDetector(
                 onTap: (){
                   setState(() {
                     chanegTab == 0;
                   });
                 },
               )),
               Tab(text: 'Tab 2',child: GestureDetector(onTap: (){

                 setState(() {
                   chanegTab == 1;
                 //SliverList

                 });

               },),),
            ],

            ),
          ),

          chanegTab == 0 ?
          SliverList(
            delegate: SliverChildBuilderDelegate(
                  (context, index) => ListTile(
                tileColor: (index % 2 == 0) ? Colors.white : Colors.green[50],
                title: Center(
                  child: Text('$index',
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 50,
                          color: Colors.greenAccent[400]) //TextStyle
                  ), //Text
                ), //Center
              ), //ListTile
              childCount: 51,
            ), //SliverChildBuildDelegate
          ) //SliverList:
          :SizedBox(),
          chanegTab == 1 ?
          SliverList(
            delegate: SliverChildBuilderDelegate(
                  (context, index) => ListTile(
                tileColor: (index % 2 == 0) ? Colors.white : Colors.green[50],
                title: Center(
                  child: Text('$index',
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 50,
                          color: Colors.red[400]) //TextStyle
                  ), //Text
                ), //Center
              ), //ListTile
              childCount: 51,
            ), //SliverChildBuildDelegate
          ) //SliverList
          :SizedBox()
        ],
      )
    ));
  }
}

class Home extends StatefulWidget {
  const  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(length: 2, child:
      Scaffold(
        appBar:AppBar(flexibleSpace: FlexibleSpaceBar(background:
        Container(height: 210,
          decoration: BoxDecoration(
              color: Colors.black
          ),),
        ),
          bottom:  TabBar(tabs: [
            Icon(Icons.access_alarm_outlined),
            Icon(Icons.ac_unit_sharp)

          ],),
          // title:
        ),
        body: TabBarView(children: [

          Icon(Icons.access_alarm_outlined),
          Icon(Icons.ac_unit_sharp)

        ],),


      ),
    );
  }
}



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
      child: SafeArea(child: NestedScrollView(headerSliverBuilder:
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
