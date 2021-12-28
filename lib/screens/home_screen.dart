import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Componentes en flutter'),
        elevation: 0,
        backgroundColor: Colors.indigo,
      ),
      body: ListView.separated(
          itemBuilder: (context, __) => ListTile(
              leading: const Icon(Icons.access_time_outlined),
              title: const Text('Nombre de Ruta'),
              onTap: () {
                // final route = MaterialPageRoute(
                //     builder: (context) => const Listview1Screen());
                // Navigator.push(context, route);
                // Navigator.pushReplacement(context, route);
                Navigator.pushNamed(context, 'listview2');
              }),
          separatorBuilder: (_, __) => const Divider(),
          itemCount: 10),
    );
  }
}
