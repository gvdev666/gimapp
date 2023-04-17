import 'package:flutter/material.dart';
import 'package:lolgimnasio/Sentadilla.dart';
import 'Flexiones.dart';
import 'Ejercicio1.dart';
class ExerciseCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String imageUrl;
  final Function onTap;

  const ExerciseCard({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.imageUrl,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap as void Function()?,
      child: Container(
        width: double.infinity,
        height: 200,
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: NetworkImage(imageUrl),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(
              colors: [Colors.transparent, Colors.black.withOpacity(0.7)],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                subtitle,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ExerciseScreen extends StatelessWidget {
  const ExerciseScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ejercicios'),
      ),
      body: ListView(
        children: [
          ExerciseCard(
            title: 'Abdominales',
            subtitle: '20 minutos',
            imageUrl:
                'https://www.learnui.design/blog/img/exercises/exercise-1.png',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Abdominales(),
                ),
              );
            },
          ),
          ExerciseCard(
            title: 'Sentadillas',
            subtitle: '15 minutos',
            imageUrl:
                'https://www.learnui.design/blog/img/exercises/exercise-2.png',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Sentadillas(),
                ),
              );
            },
          ),
          ExerciseCard(
            title: 'Flexiones',
            subtitle: '30 minutos',
            imageUrl:
                'https://www.learnui.design/blog/img/exercises/exercise-3.png',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Flexiones(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}