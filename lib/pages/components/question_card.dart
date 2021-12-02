import 'package:flutter/material.dart';
import 'package:love_quiz_app/constants.dart';
import 'package:love_quiz_app/controller/quiz_brain.dart';

QuizBrain quizBrain = new QuizBrain();
class QuestionCard extends StatefulWidget {
  @override
  _QuestionCardState createState() => new _QuestionCardState();
}





class _QuestionCardState extends State<QuestionCard> {


  @override
  Widget build(BuildContext context) {

    String questionText = quizBrain.getQuestion();

    return new Card(
      margin: EdgeInsets.fromLTRB(
          defaultPadding, defaultPadding, defaultPadding, defaultPadding * 3),
      child: Column(children: [
        Padding(
          padding: EdgeInsets.symmetric(
              vertical: defaultPadding, horizontal: defaultPadding * 2),
          child: Text(
            questionText,
            style: TextStyle(fontSize: 30),
          ),
        ),
        Divider(
          thickness: 4,
        ),
        SizedBox(
          height: defaultPadding,
        ),
        ...List.generate(
            quizBrain.getOptions().length,
            (index) => Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: defaultPadding / 4,
                      horizontal: defaultPadding * 2),
                  child: TextButton(
                    onPressed: () {
                      quizBrain.checkAnswers(index);
                      setState(() {
                        questionText = quizBrain.getQuestion();
                      });
                    },
                    child: ListTile(
                      shape: RoundedRectangleBorder(
                          side: BorderSide(color: Colors.pink, width: 0.5),
                          borderRadius: BorderRadius.circular(32)),
                      leading: Text(
                        (index + 1).toString(),
                        style: TextStyle(fontSize: 24),
                      ),
                      title: Text(
                        quizBrain.getOptions()[index],
                        style: TextStyle(fontSize: 24),
                      ),
                      trailing: Icon(
                        Icons.circle,
                        color: Colors.pink.shade100,
                        size: 32,
                      ),
                    ),
                  ),
                ))
      ]), //Column
    ); //Card
  }
}
