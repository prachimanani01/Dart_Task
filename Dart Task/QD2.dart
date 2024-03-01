import 'dart:io';
void main() {
  int sum = 0;
  print("Enter Value of 1 : ");
  int num1= int.parse(stdin.readLineSync()!);
  print("Enter Value of 2 : ");
  int num2= int.parse(stdin.readLineSync()!);
  for (int i = num1; i <= num2; i++) {
      sum += i;
  }
  print('Sum of All Numbers between $num1 and $num2 is $sum');
}