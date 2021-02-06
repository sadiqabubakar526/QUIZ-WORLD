import 'question.dart';

class QuizBrain {
  int _questionnumber = 0;
  List<Question> _questions = [
    Question('You can lead a cow down stairs but not up stairs.', false),
    Question('Approximately one quarter of human bones are in the feet.', true),
    Question('A slug\'s blood is green.', true),
    Question('Some cats are actually allergic to humans', true),
    Question('You can lead a cow down stairs but not up stairs.', false),
    Question('Approximately one quarter of human bones are in the feet.', true),
    Question('A slug\'s blood is green.', true),
    Question('Buzz Aldrin\'s mother\'s maiden name was \"Moon\".', true),
    Question('It is illegal to pee in the Ocean in Portugal.', true),
    Question(
        'In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.',
        true),
    Question(
        'The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.',
        false),
    Question(
        'The total surface area of two human lungs is approximately 70 square metres.',
        true),
    Question(
        'In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.',
        true),
    Question(
        'The total surface area of two human lungs is approximately 70 square metres.',
        true),
    Question(
        'In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.',
        true),
    Question(
        'The total surface area of two human lungs is approximately 70 square metres.',
        true),
    Question(
        'In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.',
        true),
  ];
  void nextQuestion() {
    if (_questionnumber < _questions.length - 1) {
      _questionnumber++;
    } else {
      print('end of quiz');
    }
  }

  String getquestion() {
    return _questions[_questionnumber].q;
  }

  bool getanswer() {
    return _questions[_questionnumber].a;
  }

  bool isFinished() {
    if (_questionnumber == _questions.length - 1) {
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    _questionnumber = 0;
  }
}
