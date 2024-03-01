import 'dart:io';
void main() {
  List<int> numbers = [];
  print("Enter the numbers separated by spaces:");
  String input = stdin.readLineSync()!;
  List<String> inputs = input.split(" ");
  for (String item in inputs) {
    numbers.add(int.parse(item));
  }
  for (int i = 0; i < numbers.length - 1; i++) {
    for (int j = i + 1; j < numbers.length; j++) {
      if (numbers[i] > numbers[j]) {
        int temp = numbers[i];
        numbers[i] = numbers[j];
        numbers[j] = temp;
      }
    }
  }
  print("Sorted list in ascending order:");
  print(numbers);
}