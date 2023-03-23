import 'package:flutter/material.dart';

class SwipePage extends StatefulWidget {
  const SwipePage({super.key});

  @override
  _SwipePageState createState() => _SwipePageState();
}

class _SwipePageState extends State<SwipePage> {
  final PageController _pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: [
          Container(
            color: Colors.blue,
            child: const Center(child: Text('Page 1')),
          ),
          Container(
            color: Colors.green,
            child: const Center(child: Text('Page 2')),
          ),
          Container(
            color: Colors.yellow,
            child: const Center(child: Text('Page 3')),
          ),
        ],
      ),
    );
  }
}
