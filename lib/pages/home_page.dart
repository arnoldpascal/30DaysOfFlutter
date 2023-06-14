import 'package:flutter/material.dart';
import '../widgets/drawer.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final int days = 30;
    final String name = "Flutter";

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Catalog App",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Container(
        constraints: BoxConstraints(
          minHeight: 70,
          maxHeight: 200,
          minWidth: 70,
          maxWidth: 200,
        ),
        color: Colors.green,
        child: Container(
          height: 10,
          width: 10,
          color: Colors.red,
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}


// 3:49:00
