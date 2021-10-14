import 'package:flutter/material.dart';
import 'screen1.dart';

class Screen2 extends StatefulWidget {
  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: const Text('This is Screen 2'),
        ),
        body: const  Center(
          child:  Text(''),
        ) // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
