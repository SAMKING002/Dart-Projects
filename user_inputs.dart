import 'dart:io';
void main() {
  int addtwo(){
    print("Enter the first number: ");
    int num1 = int.parse(stdin.readLineSync()!);

    print("Enter the second Number: ");
    int num2 = int.parse(stdin.readLineSync()!);


    int add = num1 + num2;


    return add;
  }
  print("The sum of the two numbers is  ${addtwo()} ");

  
}
