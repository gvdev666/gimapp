import 'package:flutter/material.dart';
import 'intro.dart';
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/background_image.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            child: Opacity(
              opacity: 0.7,
              child: Container(
                color: Colors.black,
              ),
            ),
          ),
          Positioned(
            top: 100,
            left: 20,
            child: Text(
              'Bienvenido a la app de Gimnasio ',
              style: TextStyle(
                color: Colors.white,
                fontSize: 36,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            alignment: Alignment.bottomCenter,
            margin: EdgeInsets.only(bottom: 20),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => WorkoutTracker()),
                );
              },
              child: Text('Siguiente'),
            ),
          ),
        ],
      ),
    );
  }
}
