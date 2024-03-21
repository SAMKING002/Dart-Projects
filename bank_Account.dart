
class bankAccount{
   //Properties
   late String bankName;
   late String  CustomerName;
   late String Balance;

   //parametirized constructor
   bankAccount();
   display(){
    print(bankName);
    print(CustomerName);
    print(Balance);
   }

}


void main(){
  // Create an object 
  var account = bankAccount();
  //assign values to our properties
  account.bankName = "KCB TALA";
  account.CustomerName= "Samuel Mboka";
  account.Balance ="1600000.0";
  account.display();

}