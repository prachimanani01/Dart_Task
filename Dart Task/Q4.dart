import 'dart:io';
void main() {
  List<int> arr = [];
  while (true) {
    print('1. Add element');
    print('2. Delete element');
    print('3. Update element');
    print('4. Display array');
    print('5. Exit');

    stdout.write('Enter your choice: ');
    int choice = int.parse(stdin.readLineSync()!);

    switch (choice) {
      case 1:
        stdout.write('Enter the element to add: ');
        int addElement = int.parse(stdin.readLineSync()!);
        arr.add(addElement);
        break;
      case 2:
        stdout.write('Enter the element to delete: ');
        int deleteElement = int.parse(stdin.readLineSync()!);
        arr.remove(deleteElement);
        break;
      case 3:
        stdout.write('Enter the index and value to update: ');
        List<String> updateInput = stdin.readLineSync().split(' ');
        int updateIndex = int.parse(updateInput[0]);
        int updateValue = int.parse(updateInput[1]);
        if (updateIndex >= 0 && updateIndex < arr.length) {
          arr[updateIndex] = updateValue;
        } else {
          print('Invalid index');
        }
        break;
      case 4:
        print('Array: $arr');
        break;
      case 5:
        exit(0);
        break;
      default:
        print('Invalid choice');
    }
  }
}