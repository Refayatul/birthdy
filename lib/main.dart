import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData.dark(useMaterial3: true),
      home: const Scaffold(
        body: GetBirthdaImage(),
      ),
    ),
  );
}

class GetBirthdaImage extends StatelessWidget {
  const GetBirthdaImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Image(
          image: AssetImage('assets/images/quiz-logo.png'),
        ),
        const SizedBox(height: 20),
        const Text('Learn flutter in Fun Way'),
        TextButton(
          onPressed: () {
            //Later
          },
          style: TextButton.styleFrom(
            foregroundColor: Colors.white,
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
