void main() {
  final String pokemon = 'Pikachu';
  final int hp = 100;
  final bool isAlive = identical(hp, 0) ? false : true;
  final abilities = ['Thunderbolt', 'Quick Attack', 'Thunder Wave'];
  final sprites = <String>[
    'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/25.png',
    'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/25.png'
  ];

  // dynamic == null

  dynamic errorMessage = 'Error'; // dynamic es una variable en su ley,
  //puede ser cualquier cosa, pero no es recomendable usarla,
  // ya que no es fuertemente tipada.
  // Por defecto es null y el signo de interrogación no es necesaria en su declaración de tipo.

  errorMessage = true;
  errorMessage = {};
  errorMessage = [];
  errorMessage = () => true;
  errorMessage = null;

  print("""
$pokemon
$hp
$isAlive
$abilities
$sprites
$errorMessage
 """);
}
