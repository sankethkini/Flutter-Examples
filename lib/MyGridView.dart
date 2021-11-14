import 'package:flutter/material.dart';

//gridview
Widget gridView() {
  var myitems = [
    "one",
    "two",
    "three",
    "four",
    "two",
    "three",
    "four",
    "two",
    "three",
    "four"
  ];
  List<Widget> items = [];
  myitems.forEach((element) {
    items.add(
      Container(
        child: Center(
          child: Text(element),
        ),
        color: Colors.blue,
      ),
    );
  });
  return MaterialApp(
    home: Scaffold(
      body: GridView.count(
        crossAxisCount: 3,
        mainAxisSpacing: 5,
        crossAxisSpacing: 5,
        children: items,
        padding: EdgeInsets.all(1),
      ),
    ),
  );
}
