import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final wordPair = new WordPair.random();
    return MaterialApp(
      // debugShowCheckedModeBanner: false,
      title: "Welcome to Flutter",
      home: new Scaffold(
        appBar: new AppBar(
          // backgroundColor: Colors.deepOrangeAccent,
          title: new Text("Welcome to Flutter"),
        ),
        body: new Center(
          child: new Text(wordPair.asPascalCase),
        ),
      ),
    );
  }
}
