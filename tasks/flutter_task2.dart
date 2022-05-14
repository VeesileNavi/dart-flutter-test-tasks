import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const FirstPage(),
    );
  }
}

class FirstPage extends StatefulWidget {
 

  const FirstPage({
    Key? key,
  }) : super(key: key);

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blue,
        child: Center(
          child: TextButton(child: const Text("На экран 2",style: TextStyle(color: Colors.black)), onPressed: (){
 Navigator.push(
  context,
  MaterialPageRoute(builder: (_) => SecondPage())
);
          },),
        ),
      ),
      
    );
  }
}


class SecondPage extends StatefulWidget {
 

  const SecondPage({
    Key? key,
  }) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.green,
        child: Center(
          child: TextButton(child: const Text("На экран 1", style: TextStyle(color: Colors.black)), onPressed: (){
 Navigator.push(
  context,
  MaterialPageRoute(builder: (_) => FirstPage())
);
          },),
        ),
      ),
      
    );
  }
}
