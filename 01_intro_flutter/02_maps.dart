void main() {
  final Map<String, dynamic> pokemon = {
    'name': 'Ditto',
    'hp': 48,
    'isAlive': true,
    'abilities': ['Transform'],
    'sprites': <int, String>{
      1: 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/132.png',
      2: 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/132.png'
    }
  };

  print(pokemon);
  print('Name: ${pokemon['name']}');
  print('Front: ${pokemon['sprites'][1]}');
  print('Back: ${pokemon['sprites'][2]}');
}
