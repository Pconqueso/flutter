// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:project1/main.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 10;

  void _incrementCounter() {
    setState(() {
      _counter += 2;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter -= 2;
    });
  }

  void _multiplyCounter() {
    setState(() {
      _counter *= 2;
    });
  }

  void _divideCounter() {
    setState(() {
      _counter ~/= 2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Demo'),
      ),
      body: Center(
        child: Text(
          '$_counter',
          style: TextStyle(fontSize: 36),
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: _incrementCounter,
            tooltip: 'Increment',
            child: Icon(Icons.add),
          ),
          SizedBox(height: 16),
          FloatingActionButton(
            onPressed: _decrementCounter,
            tooltip: 'Decrement',
            child: Icon(Icons.remove),
          ),
          SizedBox(height: 16),
          FloatingActionButton(
            onPressed: _multiplyCounter,
            tooltip: 'Multiply',
            child: Icon(Icons.close),
          ),
          SizedBox(height: 16),
          FloatingActionButton(
            onPressed: _divideCounter,
            tooltip: 'Divide',
            child: const Icon(Icons.info),
          ),
        ],
      ),
    );
  }
}
