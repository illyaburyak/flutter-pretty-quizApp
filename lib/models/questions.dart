import 'package:flutter/material.dart';

class Question {
  final String title;
  final List<Map> answers;

  Question({@required this.title, @required this.answers});
}

class QuestionData {
  final _data = [
    Question(title: 'Your favorite sport?', answers: [
      {'answer': 'swimming', 'isCorrect': 1},
      {'answer': 'box'},
      {'answer': 'basketball'},
      {'answer': 'football'},
    ]),
    Question(title: 'Your favorite country?', answers: [
      {'answer': 'Ukraine', 'isCorrect': 1},
      {'answer': 'France'},
      {'answer': 'China'},
      {'answer': 'Brazil'},
    ]),
    Question(title: 'Your favorite drink?', answers: [
      {'answer': 'water', 'isCorrect': 1},
      {'answer': 'sprite'},
      {'answer': 'Dr.peper'},
      {'answer': 'shweps'},
    ]),
    Question(title: 'Your favorite fast food?', answers: [
      {'answer': 'McDonald\'s', 'isCorrect': 1},
      {'answer': 'Burger King'},
      {'answer': 'Taco Bell'},
      {'answer': 'Walmart'},
    ]),
    Question(title: 'Your favorite drink?', answers: [
      {'answer': 'water', 'isCorrect': 1},
      {'answer': 'sprite'},
      {'answer': 'Dr.peper'},
      {'answer': 'shweps'},
    ]),
    Question(title: 'Your favorite drink?', answers: [
      {'answer': 'water', 'isCorrect': 1},
      {'answer': 'sprite'},
      {'answer': 'Dr.peper'},
      {'answer': 'shweps'},
    ]),
    Question(title: 'Your favorite drink?', answers: [
      {'answer': 'water', 'isCorrect': 1},
      {'answer': 'sprite'},
      {'answer': 'Dr.peper'},
      {'answer': 'shweps'},
    ]),
  ];

  List<Question> get questions => [..._data];
}
