import 'package:flutter/material.dart';

import '../widget/w1.dart';
import '../widget/w2.dart';
import '../widget/w3.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double _counter = 0;

  void changeCounter(double delta) {
    setState(() {
      _counter = double.parse((_counter + delta).toStringAsFixed(1));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
          child: Column(
        children: [
          IconButton(
              onPressed: () => changeCounter(-_counter),
              icon: const Icon(Icons.refresh),
              key: const Key('Refresh')),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              W1(
                number: _counter,
                callback: changeCounter,
              ),
              W2(
                value: _counter,
              ),
              W3(
                number: _counter,
                callback: changeCounter,
              )
            ],
          ),
        ],
      )),
    );
  }
}
