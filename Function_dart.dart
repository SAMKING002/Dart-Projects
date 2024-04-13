//welcome
String wel_Name(samuel){
   return samuel;
}
// Task 1
int  addTwo(num1, num2){
     int num3 =num1 + num2 ;
     return num3;
}
// Task 2
int subtractTwo(num1, num2){
    return num1 - num2 ;
}
// Task 3
int  multiplyTwo(num1, num2) {
    return num1 * num2 ;
}
// Task 4
  double divideTwo(num1, num2){
    
        return num1 / num2 ; 
   }
// Task 5
 int stringLength(String name ) {
    return name.length;
}
//Task 6
int getFirstElement(lst){
    
        return lst[0];
 }
 void main(){
// Test the functions
print(wel_Name("Welcome to our Dart class, Take your cup of coffee as we embark on this epic journey together."));
print(addTwo(5, 3));          // Output: 8
print(subtractTwo(5, 3));      // Output: 2
print(multiplyTwo(5, 3));      // Output: 15
print(divideTwo(6, 3));        // Output: 2.0
print(stringLength("hello"));  // Output: 5
print(getFirstElement([1, 2, 3]));  // Output: 1
 }