import 'package:flutter/material.dart';
import 'dart:math';
import 'package:url_launcher/url_launcher.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(title: 'My First Flutter App :)'),
    );
  }
}




class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final Random _random = new Random();
  Color _color = Colors.white;
  Color _colorText = Colors.black;
  void changeColor(){
    setState(() {
      _color = new Color.fromRGBO(
          _random.nextInt(256),
          _random.nextInt(256),
          _random.nextInt(256),
          1.0
      );
    });
  }
  @override
  Widget build(BuildContext context) {
    return new Center(
        child: new GestureDetector(
            onTap: () {
              changeColor();
            },
            child: new Scaffold(
              backgroundColor: _color,
              appBar: new AppBar(
                title: new Text(widget.title),
              ),
              body: new Center(

                child: new Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    new Text(
                      'I want a job at the Solid Software', style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0,color: _colorText),
                    ),
                  ],
                ),
              ),
            )));
    //toDo add url_launcher button
  }
}