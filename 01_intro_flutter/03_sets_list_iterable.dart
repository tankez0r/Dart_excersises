void main() {
  final numbers = [1, 2, 3, 4, 5, 5, 5, 6, 6, 7, 7, 8, 9, 10];

  print('List original $numbers');
  print('Lenght ${numbers.length}');
  print('index 0 ${numbers[0]}');
  print('firstOf ${numbers.first}');
  print('last ${numbers.last}');
  print('Reversed ${numbers.reversed}');

  final reversedNumbers = numbers.reversed;

  print('ReversedNumbers $reversedNumbers');

  print('List ${reversedNumbers.toList()}');
  print('Set ${reversedNumbers.toSet()}');

  final numbersGreatherThan5 = numbers.where((number) => number > 5);

  print('Numbers greather than 5 $numbersGreatherThan5');
  print('Set Numbers greather than 5 ${numbersGreatherThan5.toSet()}');
}
