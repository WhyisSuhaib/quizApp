import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen( this.startQuiz,{super.key});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            "assets/Images/simplistic-woman-leaning-on-a-question"
            "-mark.png",
            width: 300,
          ),
          const SizedBox(height: 40),
          const Text(
            "Learn and Challenge Yourself!",
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          OutlinedButton.icon(
            onPressed:
              startQuiz,
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
            ),
            icon: const Icon(Icons.arrow_circle_right_outlined),
            label: const Text(
              "Start Quiz",
            ),
          )
        ],
      ),
    );
  }
}
