import 'package:flutter/material.dart';

class CustomCardType2Screen extends StatelessWidget {
  const CustomCardType2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      child: Column(
        children: const [
          FadeInImage(
              image: NetworkImage(
                  'https://fotoarte.com.uy/wp-content/uploads/2019/03/Landscape-fotoarte.jpg'),
              placeholder: AssetImage('assets/jar-loading.gif'),
              width: double.infinity,
              height: 230,
              fit: BoxFit.cover),
        ],
      ),
    );
  }
}
