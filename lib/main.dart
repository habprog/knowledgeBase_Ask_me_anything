import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Text(
            'Ask me that Question',
          ),
          backgroundColor: Colors.blue.shade400,
          centerTitle: true,
        ),
        body: askMeAnything(),
      ),
    ),
  );
}

class askMeAnything extends StatefulWidget {
  @override
  _askMeAnythingState createState() => _askMeAnythingState();
}

class _askMeAnythingState extends State<askMeAnything> {
  int changeBall = 1;

  void askChange(){
    setState(() {
      changeBall = Random().nextInt(5) + 1;
    });

  }
  @override
  Widget build(BuildContext context) {
    askChange();
    return Center(
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 0.0, horizontal: 25.0),
        child: Column(
          children: <Widget>[
            Expanded(
              child: FlatButton(
                onPressed: (){
                  askChange();
                  print('hello ask your question and your anwser is $changeBall');
                },
                child: Image.asset('images/ball$changeBall.png'),
              ),
            ),
            Expanded(
              child: Column(
                children: <Widget>[
                  Text(
                    'Dev Habeeb',
                    style: TextStyle(
                      color: Colors.white38,
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                  Icon(
                   Icons.thumb_up,
                    color: Colors.white70,
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
