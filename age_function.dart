
// writing function outside main function.
double printName(double year){

  double age = year - 10;

  print("The age is: ${age}");

  return age;
  
}
// this is our main function.
void main(){
  printName(2024);
}
