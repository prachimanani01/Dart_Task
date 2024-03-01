import 'dart:io';
class Bank{
    int? acc;
    int? bal;
    String? owner;
    void enterDetails(){
      print("Enter Account Number : ");
      acc= int.parse(stdin.readLineSync()!);
      print("Enter Account Balance : ");
      bal= int.parse(stdin.readLineSync()!);
      print("Enter Account Owner Name : ");
      owner= (stdin.readLineSync()!);
    }
    void  displayDetails(){
      print("Account Number : $acc");
      print("Account Balance : $bal");
      print("Owner's Name : $owner");
    }
}
void main(){
  Bank b = Bank();
  b.enterDetails();
  b.displayDetails();
}