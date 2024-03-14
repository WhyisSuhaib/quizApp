import 'package:flutter/material.dart';

class QuestionsSummery extends StatelessWidget {
  const QuestionsSummery({super.key, required this.summaryData});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map((data) {
            return Row(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.deepOrange,
                    child:
                        Text(((data["question_index"] as int) + 1).toString()
                            , style: const TextStyle(color: Colors.white),)
                ),
                const SizedBox(width: 10,),
                Expanded(
                  child: Column(
                    children: [
                      const SizedBox(height: 10,),
                      Text(
                        data["question"] as String,
                        style:
                            const TextStyle(fontSize: 16, color: Colors.white),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        data["user_answer"] as String,
                        style: const TextStyle(
                            fontSize: 14,
                            color: Color.fromRGBO(255, 186, 8, 1.0)),
                      ),
                      Text(
                        data["correct_answer"] as String,
                        style:
                            const TextStyle(fontSize: 14, color: Colors.green),
                      ),
                    ],
                  ),
                ),
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}
