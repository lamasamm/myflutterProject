import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text('Ask Me Anything'),
            centerTitle: true,
            backgroundColor: Colors.blue[900],
          ),
          backgroundColor: Colors.blueAccent,
          body: BALLS(),
        ),
      ),
    );

class BALLS extends StatefulWidget {
  @override
  _BALLSState createState() => _BALLSState();
}

class _BALLSState extends State<BALLS> {
  @override
  Widget build(BuildContext context) {
    int numbers = Random().nextInt(5) + 1;
    return Center(
      child: FlatButton(
        onPressed: () {
          setState(() {
            numbers = Random().nextInt(5) + 1;
          });
        },
        child: Image.asset('images/ball$numbers.png'),
      ),
    );
  }
}
