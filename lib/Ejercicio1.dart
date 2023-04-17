import 'package:flutter/material.dart';
import 'package:flutter_3d_obj/flutter_3d_obj.dart';


class Abdominales extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ejercicio 1'),
      ),
      body: Center(
        child: Object3D(
          path: 'assets/my_model.obj',
          asset: true,
          // Configuración adicional
        ),
      ),
    );
  }
}
