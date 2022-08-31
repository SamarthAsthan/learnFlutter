// ignore_for_file: prefer_const_constructors, unnecessary_new

import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(Learn());
}

class Learn extends StatefulWidget {
  const Learn({super.key});

  @override
  State<Learn> createState() => _LearnState();
}

class _LearnState extends State<Learn> {
  int pressText = 0;

  void pressed() {
    setState(() {
      pressText += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Learn",
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Learn"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  "You have pressed button $pressText times",
                  style: new TextStyle(
                      fontSize: 20.0, fontWeight: FontWeight.bold),
                ),
              ),
              CircleAvatar(
                radius: 30,
                backgroundColor: Colors.deepPurple,
                child: IconButton(
                  splashColor: Colors.deepPurple,
                  color: Colors.white,
                  onPressed: pressed,
                  icon: Icon(Icons.plus_one_rounded),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
