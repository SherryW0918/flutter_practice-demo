import 'package:flutter/material.dart';
import 'package:love_quiz_app/constants.dart';
import 'components/question_card.dart';


class QuizPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[100],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: new SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: defaultPadding,horizontal: defaultPadding),
              child: Text('progressBar'),
            ),
            Expanded(
              child: QuestionCard(),
            ),
          ],
        ),
      ),
    );
  }
}
