import 'dart:math';

class BmiLogic {
  BmiLogic({this.height, this.weight});

  final int height;
  final int weight;

  double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Жингийн илүүдэлтэй';
    } else if (_bmi > 18.5) {
      return 'Хэвийн';
    } else {
      return 'Жингийн дутагдалтай';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'Та хэвийн жингээсээ илүү жинтэй байгаа тул дасгал хөдөлгөөн хий!!!';
    } else if (_bmi >= 18.5) {
      return 'Та хэвийн жинтэй байна';
    } else {
      return 'Та хэвийн жингээсээ бага жинтэй тул дасгал хийхгүйгээр юм ид';
    }
  }
}
