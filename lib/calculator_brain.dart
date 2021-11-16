import 'dart:math';
class CalculatorBrain{
  CalculatorBrain({this.height,this.weight});

  final int height;
  final int weight;

  double _bmi;

  String calculateBMI(){
     _bmi = weight / pow(height/100,2);
    return _bmi.toStringAsFixed(1);
  }
  String getResults(){
    if(_bmi >= 25){
      return 'Over Weight';
    }else if(_bmi> 18.5){
      return 'Normal';
    }else{
      return 'Under Weight';
    }
  }
  String getInterPretation(){

    if(_bmi >= 25){
      return 'You have a higher than normal body weight. Try to do exercise daily';
    }else if(_bmi> 18.5){
      return 'Ypu have a normal body weight. nice job';
    }else{
      return ' Ypu have a lower body weight. you should eat bit more';
    }
  }
}