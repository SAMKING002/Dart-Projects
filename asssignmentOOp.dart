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

  // Method demonstrating the use of a loop
  void countTo(int limit) {
    print('Counting from 1 to $limit:');
    for (int i = 1; i <= limit; i++) {
      print(i);
    }
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

// Class initialized with data from a file
class Zoo {
  List<LivingThing> livingThings = [];

  Zoo(String fileName) {
    _initializeFromDataFile(fileName);
  }

  void _initializeFromDataFile(String fileName) {
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
  }

  void displayLivingThings() {
    print('Living Things in the Zoo:');
    for (LivingThing thing in livingThings) {
      thing.display();
    }
  }
}

void main() {
  // Create a Zoo instance initialized with data from a file
  Zoo zoo = Zoo('data.txt');

  // Display living things in the zoo
  zoo.displayLivingThings();
  
}
