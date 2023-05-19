import 'package:flutter/material.dart';
import '../UI/quote.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _index = 0;
  List<Map<String, String>> quotesList = [
    {
      'quote':
          'If something is wrong fix it. But train yourself not to worry, worry fixes nothing',
      'author': 'Ernest Hemingway',
    },
    {
      'quote': 'The best way to predict the future is to create it',
      'author': 'Abraham Lincoln',
    },
    {
      'quote':
          'Success is not the key to happiness. Happiness is the key to success.',
      'author': 'Albert Schweitzer',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Daily Motivation",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Container(
        color: Colors.grey.shade400,
        child: Center(
          child: Container(
            height: 500,
            width: 300,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(50),
              boxShadow: const [
                BoxShadow(
                    color: Colors.purple,
                    spreadRadius: 1,
                    blurRadius: 8,
                    offset: Offset(4, 4)),
                BoxShadow(
                    color: Colors.purple,
                    spreadRadius: 1,
                    blurRadius: 8,
                    offset: Offset(-4, -4)),
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  '- ${quotesList[_index % quotesList.length]['quote'] ?? 'Anonymous'}',
                  style: TextStyle(fontSize: 20),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 10),
                Text(
                  '- ${quotesList[_index % quotesList.length]['author'] ?? 'Anonymous'}',
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.center,
                ),
                FloatingActionButton(
                  onPressed: _showQuote,
                  child: const Icon(Icons.lightbulb),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _showQuote() {
    //incremnt by 1 each time

    setState(() {
      _index += 1;
    });
  }
}
