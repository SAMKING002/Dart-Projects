import 'dart:io';

// Interface definition
abstract class Animal {
  void makeSound();
}

// Base class
class LivingThing {
  String name;

  LivingThing(this.name);

  void display() {
    print('Dog Name: $name');
  }
}

// Derived class implementing the interface
class Dog extends LivingThing implements Animal {
  Dog(String name) : super(name);

  @override
  void makeSound() {
    print('$name says Woof!');
  }
}

// Derived class overriding an inherited method
class Cat extends LivingThing implements Animal {
  Cat(String name) : super(name);

  @override
  void display() {
    print('Cat Name: $name');
  }

  @override
  void makeSound() {
    print('$name says Meow!');
  }
}

// Method to initialize instances from file
List<LivingThing> readDataFromFile(String fileName) {
  List<LivingThing> livingThings = [];

  try {
    File file = File(fileName);
    List<String> lines = file.readAsLinesSync();

    for (String line in lines) {
      List<String> parts = line.split(',');
      String type = parts[0].trim();
      String name = parts[1].trim();

      if (type == 'Dog') {
        livingThings.add(Dog(name));
      } else if (type == 'Cat') {
        livingThings.add(Cat(name));
      }
    }
  } catch (e) {
    print('Error reading file: $e');
  }

  return livingThings;
}

// Method demonstrating the use of a loop
void printLivingThings(List<LivingThing> livingThings) {
  print('Living Things in our home:');
  for (LivingThing thing in livingThings) {
    thing.display();
    if (thing is Animal) {
      (thing as Animal).makeSound();
    }
  }
}

void main() {
  // Create instances from file
  List<LivingThing> livingThings = readDataFromFile('data.txt');

  // Print living things
  printLivingThings(livingThings);
}
