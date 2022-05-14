import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const RectanglePage(),
    );
  }
}

class RectanglePage extends StatefulWidget {
 

  const RectanglePage({
    Key? key,
  }) : super(key: key);

  @override
  State<RectanglePage> createState() => _RectanglePageState();
}

class _RectanglePageState extends State<RectanglePage> {
 var size = 150.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
      child: AnimatedSize(
        duration: Duration(milliseconds: 500),
        child: GestureDetector(
          onTap:(){setState((){
            size=300.0;
          });},
          child: Container(
            height: size,
            width: size,
            color: Colors.red,
          ),
        ),
      ))
      
    );
  }
}