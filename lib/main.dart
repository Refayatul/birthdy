import 'package:birthdy/start_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      //theme: ThemeData.dark(useMaterial3: true),
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Color.fromARGB(255, 78, 13, 151),
              Color.fromARGB(255, 107, 15, 168),
            ]),
          ),
          child: const StartScreen(),
        ),
        //GradientContainer(Colors.blue, Colors.purple),
      ),
    ),
  );
}

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.color1, this.color2, {super.key});

  final Color color1;
  final Color color2;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            color1,
            color2,
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: const Center(
        child: GetBirthdayImage(),
      ),
    );
  }
}

class GetBirthdayImage extends StatelessWidget {
  const GetBirthdayImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Image(image: AssetImage('assets/images/quiz-logo.png')),
        const SizedBox(height: 20),
        OutlinedButton(
          onPressed: () {
            // Add your onPressed functionality here
          },
          style: OutlinedButton.styleFrom(
            foregroundColor: Colors.white,
            side: const BorderSide(color: Colors.white), // Border color
            textStyle: const TextStyle(
              fontSize: 20,
            ),
          ),
          child: const Text('Start Quiz'),
        ),
      ],
    );
  }
}
