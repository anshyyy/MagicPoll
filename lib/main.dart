// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
          home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: const Text('Ask me anything'),
          backgroundColor: Colors.blue[900],
        ),
        body: const Pollpage(),
      )),
    );

class Pollpage extends StatefulWidget {
  const Pollpage({Key? key}) : super(key: key);

  @override
  _PollpageState createState() => _PollpageState();
}

class _PollpageState extends State<Pollpage> {
  int num = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Row(
      children: [
        Expanded(
          child: FlatButton(
            onPressed: () {
              setState(() {
                num = Random().nextInt(5) + 1;
              });
            },
            child: Image.asset('images/ball$num.png'),
          ),
        )
      ],
    ));
  }
}
