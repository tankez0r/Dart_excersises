void main() {
  print(greeetEverone());

  print(addTwoNumber(20, 5));

  print(greetPerson(name: "Oh Long Johnson"));
}

String greeetEverone() => "Hello Everyone";

int addTwoNumber(int a, int b) {
  return a + b;
}

int addTwoNumberOptional(int a, [int b = 0]) {
  return a + b;
}

String greetPerson({required String name, String message = 'hola'}) {
  return "$message, $name";
}
