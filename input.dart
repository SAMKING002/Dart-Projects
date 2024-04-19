import 'dart:io' ;

void main(){
print("Welcome to our system.. feel free to interact with me");

print("Please Enter any number kindly:  ");

String num1 = stdin.readLineSync()!; 

int num2 = int.parse(num1);


if(num2 > 10){
   print("The number is greater than 10.");
}else if(num2 > 10) {
  print("the number is less than 10");
}
else{
  print("the number is equal to 10");
}

     

}