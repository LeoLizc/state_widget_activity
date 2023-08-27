import 'package:flutter/material.dart';

class W1 extends StatelessWidget {
  final double number;
  final Function(double) callback;

  const W1({super.key, required this.number, required this.callback});
  //color: Theme.of(context).primaryColor,
  // color: Theme.of(context).colorScheme.inversePrimary,
  // container margin: const EdgeInsets.all(10),
  // container padding: const EdgeInsets.all(10),
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          number.toString(),
          key: const Key('W1Value'),
        ),
        IconButton(
            onPressed: () => {callback(0.1)},
            icon: const Icon(Icons.add),
            key: Key('W1Add')),
        IconButton(
            onPressed: () => callback(-0.1),
            icon: const Icon(Icons.remove),
            key: Key('W1Sub'))
      ],
    );
  }
}
