import 'package:flutter/material.dart';
 
final List<int> array = [1,2,3,4,5,6,7,8,9,10];
void main() {
  runApp(MaterialApp(
      home:  Scaffold(
        body: ListView.separated(
            padding: const EdgeInsets.all(8),
            itemCount: array.length,
            separatorBuilder: (BuildContext context, int index) => Divider(),
            itemBuilder: (BuildContext context, int index) {
              return Container(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Text(index.toString())
              );
            }
        ),
      )
  )
 );
}
