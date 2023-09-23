void main() {
  final spiderMan =
      new Hero(name: 'Peter Parker', power: 'Spider Sense', isAlive: true);

  print(spiderMan);
}

class Hero {
  String name;
  String power;
  bool isAlive;

  Hero({required this.name, required this.power, required this.isAlive});

  @override
  String toString() {
    return "El heroe $name tiene el poder de: $power." +
        (isAlive ? ' Y esta vivo!!' : ' Y esta muerto...');
  }
}
