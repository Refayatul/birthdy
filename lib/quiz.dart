import 'package:birthdy/question_screen.dart';
import 'package:birthdy/start_screen.dart';
import 'package:flutter/material.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  var activeScreen = 'start-screen';
  switchScreen() {
    setState(() {
      activeScreen = 'question-screen';
    });
  }

  // Widget? activeScreen;

  // @override
  // void initState() {
  //   activeScreen = StartScreen(switchScreen);
  //   super.initState();
  // }

  // switchScreen() {
  //   setState(() {
  //     activeScreen = const QuestionScreen();
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //theme: ThemeData.dark(useMaterial3: true),
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 78, 13, 151),
                Color.fromARGB(255, 107, 15, 168),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: //activeScreen,
              activeScreen == 'start-screen'
                  ? StartScreen(switchScreen)
                  : const QuestionScreen(),
        ),
      ),
    );
  }
}
