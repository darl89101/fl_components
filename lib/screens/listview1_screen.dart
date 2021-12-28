import 'package:flutter/material.dart';

class Listview1Screen extends StatelessWidget {
  final games = const ['Megaman', 'Metal Gear', 'Super Smash', 'Final Fantasy'];

  const Listview1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Listview tipo 1')),
      ),
      body: ListView(
        children: [
          ...games.map((e) => ListTile(
                title: Text(e),
                trailing: const Icon(Icons.navigate_next_outlined),
              )),
          const Divider()
        ],
      ),
    );
  }
}
