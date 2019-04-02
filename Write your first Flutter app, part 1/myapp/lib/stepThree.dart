import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(new MyApp());

class RandomWords extends StatefulWidget {
  @override
  _RandomWordsState createState() => _RandomWordsState();
}

class _RandomWordsState extends State<RandomWords> {
  @override
  Widget build(BuildContext context) {
    final WordPair wordPair = new WordPair.random();
    return new Center(child: new Text(wordPair.asPascalCase));
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Welcome Flutter",
      home: new Scaffold(
        appBar: new AppBar(
          backgroundColor: Colors.blueGrey,
          title: new Text(
            "Welcome to Flutter",
          ),
        ),
        body: RandomWords(),
      ),
    );
  }
}
