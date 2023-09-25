void main() {
  final Hero wolverine = Hero(name: 'Logan', power: 'regeneracion');

  print(wolverine);
  print(wolverine.name);
  print(wolverine.power);
}

class Hero {
  String name;
  String power;

  Hero({required this.name, this.power = 'sin poder'});

  @override
  String toString() {
    return "El heroe $name tiene el poder de: $power";
  }
}
