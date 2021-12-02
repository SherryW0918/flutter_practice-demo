import 'package:flutter/material.dart';
import 'package:love_quiz_app/models/question.dart';


class QuizBrain {

  int _questionNum = 0;

  int _score = 0;

  List<Question> _questions = [
    Question('洋洋最喜欢的颜色', ['red','orange','yellow','green'], 1),
    Question('洋洋最喜欢的水果', ['apple','orange','banana','pear'], 1),
    Question('洋洋最喜欢的动物', ['cat','dog','bird','bear'], 0),
    Question('洋洋最喜欢的零食', ['cat','dog','bird'], 0),
  ];


  void toNextQuestion(){
    if(_questionNum < _questions.length -1)_questionNum++;
    else print(_score.toString()+'/'+ _questions.length.toString());
  }


  List<String> getOptions() => _questions[_questionNum].options;
  String getQuestion()=> _questions[_questionNum].questionText;


  void checkAnswers(int userAnswer){

    if(userAnswer == _questions[_questionNum].answer)_score++;

    toNextQuestion();

  }

}