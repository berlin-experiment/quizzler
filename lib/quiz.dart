import 'question.dart';

class Quiz {
  int _questionNum = 0;

  List<Question> _questionList = [
    Question(
        q: 'There are 4 types of Forest: boreal, temperate, subtropical and tropical.',
        a: true),
    Question(q: 'Forests are home to less than 80% of Biodiversity.', a: false),
    Question(
        q: 'Every year, an estimate 18.7 million acres of forest are lost.',
        a: true),
    Question(
        q: 'More than 50% of all the forest area on our planet is in just five countries',
        a: true),
    Question(
        q: 'Boreal forests are only found in the geographical subarctic zone.',
        a: false),
    Question(
        q: 'Temperate forests can be found outside the temperate geographical zone.',
        a: false),
    Question(
        q: 'Subtropical forests are found on every continent, except Antarctica.',
        a: false)
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
