void main() async {
  final windPlant = WindPlant(initialEnergy: 200);

  print(windPlant);
  await chargePhone(plant: windPlant);

  print(windPlant);

  final nuclearPlant = NuclearPlant(energyLeft: 200);

  print(nuclearPlant);
}
// funcion con inversion de dependencias

Future<void> chargePhone({required EnergyPlant plant}) async {
  for (var i = 0; i < plant.energyLeft; i++) {
    plant.consumeEnergy(10);
    if (plant.energyLeft == 10) {
      print('Not enough energy left to charge phone');
      return;
    }
    print('Energy left: ${plant.energyLeft}');
    await Future.delayed(Duration(seconds: 1));
  }
  print('Phone charged');
}

// Abstract classes

enum PlantType { wind, solar, hydro, nuclear }

abstract class EnergyPlant {
  double energyLeft;
  final PlantType type;

  EnergyPlant({required this.energyLeft, required this.type});

  void consumeEnergy(double amount);
}

class WindPlant extends EnergyPlant {
  WindPlant({required double initialEnergy})
      : super(energyLeft: initialEnergy, type: PlantType.wind);

  @override
  void consumeEnergy(double amount) {
    energyLeft -= amount;
  }

  @override
  String toString() {
    return "WindPlant Energy Left: $energyLeft";
  }
}

class NuclearPlant implements EnergyPlant {
  @override
  double energyLeft;

  @override
  final PlantType type = PlantType.nuclear;

  NuclearPlant({required this.energyLeft});

  @override
  void consumeEnergy(double amount) {
    energyLeft -= amount * 0.5;
  }
}
