void main() {
  final mySquare = Square(side: -12);

  print('area ${mySquare.area}');
}

class Square {
  double _side;

  Square({required double side})
      : assert(side >= 0, "side can't be less or equal to 0"),
        _side = side;

  double get area {
    return _side * _side;
  }

  set side(double value) {
    print('set side $value');
    if (value <= 0) {
      throw ('side can\'t be less or equal to 0');
    }
    _side = value;
  }

  set area(double value) {}

  double calculateArea() {
    return _side * _side;
  }
}
