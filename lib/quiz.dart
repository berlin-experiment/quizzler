import 'question.dart';

class Quiz {
  int _questionNum = 0;

  List<Question> _questionList = [
    Question(
        questionText:
            'There are 4 types of Forest: boreal, temperate, subtropical and tropical.',
        questionAnswer: true),
    Question(
        questionText: 'Forests are home to less than 80% of Biodiversity.',
        questionAnswer: false),
    Question(
        questionText:
            'Every year, an estimate 18.7 million acres of forest are lost.',
        questionAnswer: true),
    Question(
        questionText:
            'More than 50% of all the forest area on our planet is in just five countries',
        questionAnswer: true),
    Question(
        questionText:
            'Boreal forests are only found in the geographical subarctic zone.',
        questionAnswer: false),
    Question(
        questionText:
            'Temperate forests can be found outside the temperate geographical zone.',
        questionAnswer: false),
    Question(
        questionText:
            'Subtropical forests are found on every continent, except Antarctica.',
        questionAnswer: false)
  ];

  void nextQuestion() {
    if (_questionNum < _questionList.length - 1) {
      _questionNum++;
    }
  }

  String getQuestionText() {
    return _questionList[_questionNum].questionText;
  }

  bool getQuestionAnswer() {
    return _questionList[_questionNum].questionAnswer;
  }

  bool endQuiz() {
    if (_questionNum >= _questionList.length - 1) {
      return true;
    } else {
      return false;
    }
  }

  void resetQuiz() {
    _questionNum = 0;
  }
}
