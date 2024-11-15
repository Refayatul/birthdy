import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData.dark(useMaterial3: true),
      home: const Scaffold(
        body: GradientContainer(
            Color.fromARGB(255, 48, 2, 216), Color.fromARGB(255, 96, 31, 248)),
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
        TextButton(
          onPressed: () {
            // Add your onPressed functionality here
          },
          style: TextButton.styleFrom(
            foregroundColor: Colors.white,
            textStyle: const TextStyle(
              fontSize: 20,
            ),
          ),
          child: const Text('Click'),
        ),
      ],
    );
  }
}
