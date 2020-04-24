import 'ques.dart';

class Quibrain {
  int _i = 0;
  int _j = 0;
  List<Ques> _questions = [
    Ques('Some cats are actually allergic to humans', true),
    Ques('You can lead a cow down stairs but not up stairs.', false),
    Ques('Approximately one quarter of human bones are in the feet.', true),
    Ques('A slug\'s blood is green.', true),
    Ques('Buzz Aldrin\'s mother\'s maiden name was \"Moon\".', true),
    Ques('It is illegal to pee in the Ocean in Portugal.', true),
    Ques(
        'No piece of square dry paper can be folded in half more than 7 times.',
        false),
    Ques(
        'In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.',
        true),
    Ques(
        'The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.',
        false),
    Ques(
        'The total surface area of two human lungs is approximately 70 square metres.',
        true),
    Ques('Google was originally called \"Backrub\".', true),
    Ques(
        'Chocolate affects a dog\'s heart and nervous system; a few ounces are enough to kill a small dog.',
        true),
    Ques(
        'In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.',
        true),
  ];

  void nextquestion(){
    if(_i<_questions.length-1){
      _i++;
    }
    if(_i<_questions.length){
      _j++;
    }
  }
  bool isFinished(){
    if(_j==13){
      return true;
    }
    else{
      return false;
    }
  }
  void reset(){
    _i=0;
    _j=0;
  }
  String getQuestion() => _questions[_i].Text;
  bool getAnswer() => _questions[_i].ans;
}