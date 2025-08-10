void main() {
  ZooKeeper zooKeeper1 = ZooKeeper("Donia");
  ZooKeeper zooKeeper2 = ZooKeeper("ِAdel");

  zooKeeper1.addAnimal(Lion("Scar"));
  zooKeeper1.addAnimal(Lion("Ella"));

  zooKeeper2.addAnimal(Lion("Dumbo"));
  zooKeeper2.addAnimal(Lion("Simba"));

  List<ZooKeeper> Keepers = [zooKeeper1, zooKeeper2];

  for (int i = 0; i < Keepers.length; i++) {
    Keepers[i].showAnimals();
  }
}

abstract class Animal {
  String? name;
  Animal(this.name);
  void makeSound();
  void displayInfo() {
    print("Animal : $name");
  }
}

class Lion extends Animal {
  Lion(super.name);

  @override
  void makeSound() {
    print("$name says : Roar.");
  }
}

class Elephant extends Animal {
  Elephant(super.name);

  @override
  void makeSound() {
    print("$name says : Trumpet .");
  }
}

class ZooKeeper {
  String? keeperName;
  final List<Animal> _animals = [];
  ZooKeeper(this.keeperName);
  void addAnimal(Animal animal) {
    _animals.add(animal);
  }

  void showAnimals() {
    print("\nZookeeper name is : $keeperName ");
    for (int i = 0; i < _animals.length; i++) {
      print("Animal : ${_animals[i].name}");
      _animals[i].makeSound();
      print('.......................................');
    }
  }
}
