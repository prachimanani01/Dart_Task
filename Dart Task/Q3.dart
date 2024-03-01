import 'dart:io';
class Person{
    int? name;
    int? age;
    String? address;
    void personDetails(){
      print("Enter Person Name : ");
      name = int.parse(stdin.readLineSync()!);
      print("Enter Person Age : ");
      age = int.parse(stdin.readLineSync()!);
      print("Enter Person Address : ");
      address = String.(stdin.readLineSync()!);
    }
    void displayDetails(){
      print("Person Name : $name");
      print("Person Age : $age");
      print("Person Address : $address");
    }
}
void main(){
  Person p = Person();
  p.personDetails();
  p.displayDetails();
}