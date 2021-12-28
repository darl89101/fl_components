import 'package:fl_components/router/app_routes.dart';
import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Componentes en flutter'),
        // elevation: 0,
        // backgroundColor: Colors.indigo,
      ),
      body: ListView.separated(
          // itemBuilder: (context, __) => ListTile(
          //     leading: const Icon(Icons.access_time_outlined),
          //     title: const Text('Nombre de Ruta'),
          //     onTap: () {
          //       // final route = MaterialPageRoute(
          //       //     builder: (context) => const Listview1Screen());
          //       // Navigator.push(context, route);
          //       // Navigator.pushReplacement(context, route);
          //       Navigator.pushNamed(context, 'listview2');
          //     }),

          itemBuilder: (context, index) {
            final item = AppRoutes.menuOptions[index];
            return ListTile(
                leading: Icon(item.icon, color: AppTheme.primary),
                title: Text(item.name),
                onTap: () {
                  Navigator.pushNamed(context, item.route);
                });
          },
          separatorBuilder: (_, __) => const Divider(),
          itemCount: AppRoutes.menuOptions.length),
    );
  }
}
