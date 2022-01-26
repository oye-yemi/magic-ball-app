import 'dart:math';
import 'package:flutter/material.dart';


void main() => runApp(
      MaterialApp(
        home: BallPage(),
      ),
    );

class BallPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(

    backgroundColor: Colors.black,
    appBar: AppBar(
    centerTitle: true,
    title: Text("Magic 8-ball",),
    backgroundColor: Colors.black,
    ),

      body: Ball(),
    );
  }
}

class Ball extends StatefulWidget {


  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {

  int ballface = 1;

  void ChangeBallFace(){
    setState(() {
       ballface = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: (){
           ChangeBallFace();
        },
        child: Image.asset("images/ball$ballface.png"),
      ),
    );
  }
}

