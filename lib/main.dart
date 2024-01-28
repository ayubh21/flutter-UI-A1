// ignore_for_file: use_key_in_widget_constructors, todo

import 'package:flutter/material.dart';
import 'dart:math';

//https://medium.com/flutter-community/flutter-layout-cheat-sheet-5363348d037e

//This app makes use of the Row, Column,
//Expanded, Padding, Transform, Container,
//BoxDecoration, BoxShape, Colors,
//Border, Center, Align, Alignment,
//EdgeInsets, Text, and TextStyle Widgets
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //first level widget of Material Design
      home: Scaffold(
        //default route
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: const Text("App1 - UI Layout"),
          backgroundColor: Colors.blue,
        ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Column(
              children: <Widget>[
                Container(
                    height: 100.0,
                    width: 100.0,
                    alignment: Alignment.center,
                    child: const Text(
                      'Container 1',
                      textAlign: TextAlign.center,
                    ),
                    decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        color: Colors.amber,
                        border: Border.all(color: Colors.black, width: 3))),
                Transform.rotate(
                  angle: pi / 4,
                  child: Container(
                    height: 100.0,
                    width: 100.0,
                    alignment: Alignment.center,
                    child: const Text(
                      'Container 2',
                      textAlign: TextAlign.center,
                    ),
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            ),
            Column(
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: EdgeInsets.only(top: 10.0, bottom: 10.0),

                    // Wrap Container 3 with Expanded
                    child: Container(
                      height: 100.0,
                      width: 100.0,
                      alignment: Alignment.bottomCenter,
                      child: const Text(
                        'Container 3',
                        style: TextStyle(),
                      ),
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        color: Colors.yellow,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: EdgeInsets.only(top: 10.0, bottom: 10.0),

                    // Wrap Container 4 with Expanded
                    child: Container(
                      height: 100.0,
                      width: 100.0,
                      alignment: Alignment.centerRight,
                      child: const Text('Container 4', style: TextStyle()),
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Expanded(
                  flex: 2,
                  child: Container(
                    height: 100.0,
                    width: 100.0,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.black,
                        border: Border.all(width: 3, color: Colors.white)),
                    child: const Center(
                      child: Text(
                        'Container 5',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    height: 100.0,
                    width: 100.0,
                    color: Colors.red,
                    child: const Center(
                      child: Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            'Con 6',
                            style: TextStyle(fontSize: 30),
                          )),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
