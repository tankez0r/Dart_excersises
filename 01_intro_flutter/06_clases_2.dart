void main() {
  final spiderMan =
      new Hero(name: 'Peter Parker', power: 'Spider Sense', isAlive: true);

  print(spiderMan);

  final Map<String, dynamic> json = {
    'name': 'Tony Stark',
    'power': 'Money',
    'isAlive': true,
  };

  final ironMan = Hero.fromJson(json);
  print(ironMan);
}

class Hero {
  String name;
  String power;
  bool isAlive;

  Hero({required this.name, required this.power, required this.isAlive});

  Hero.fromJson(Map<String, dynamic> json)
      : this.name = json['name'] ?? 'No name found',
        this.power = json['power'] ?? 'No power found',
        this.isAlive = json['isAlive'] ?? false;

  @override
  String toString() {
    return "El heroe $name tiene el poder de: $power." +
        (isAlive ? ' Y esta vivo!!' : ' Y esta muerto...');
  }
}
