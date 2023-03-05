import 'package:cyp/stage.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

      ),
      home: const SplashSc(),
    );
  }
}


class SplashSc extends StatefulWidget {
  const SplashSc({Key? key}) : super(key: key);

  @override
  State<SplashSc> createState() => _SplashScState();
}

class _SplashScState extends State<SplashSc> {

  naviToHome() async {

    Future.delayed(const Duration(milliseconds: 3000),(){
      Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>
      const Stage()), (route) => false);
    });

  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    naviToHome();
  }

  @override
  Widget build(BuildContext context) {

    return const Center(child: Text('splash screen'));
  }
}



