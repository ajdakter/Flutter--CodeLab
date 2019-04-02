import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(new MyApp());

class RandomWords extends StatefulWidget {
  @override
  _RandomWordsState createState() => _RandomWordsState();
}

class _RandomWordsState extends State<RandomWords> {
  final List<WordPair> _suggestions = <WordPair>[];
  final TextStyle _biggerFont = const TextStyle(fontSize: 16.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        title: new Text("Startup Name Generator"),
      ),
      body: _suggestionsBuilder(),
    );
  }

  Widget _suggestionsBuilder() {
    return ListView.builder(
      padding: const EdgeInsets.all(16.0),
      itemBuilder: (BuildContext _context, int i) {
        if (i.isOdd) {
          return Divider();
        }
        final int index = i ~/ 2;
        if (index >= _suggestions.length) {
          _suggestions.addAll(generateWordPairs().take(10));
        }
        return _builderRow(_suggestions[index]);
      },
    );
  }

  Widget _builderRow(WordPair pair) {
    return ListTile(
      title: new Text(
        pair.asPascalCase,
        style: _biggerFont,
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Startup Name Generator",
      home: new RandomWords(),
    );
  }
}
