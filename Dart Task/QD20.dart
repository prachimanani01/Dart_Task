import 'dart:io';
void main() {
  List<dynamic> inputList = [1, 2, 3]; 
  List<List<dynamic>> combinations = generateCombinations(inputList);
  print("All possible combinations:");
  combinations.forEach((combination) {
    print(combination);
  });
}
List<List<dynamic>> generateCombinations(List<dynamic> inputList) {
  List<List<dynamic>> result = [];
  void generate(List<dynamic> current, int start) {
    result.add(List.from(current)); 
    for (int i = start; i < inputList.length; i++) {
      current.add(inputList[i]); 
      generate(current, i + 1); 
      current.removeLast(); 
    }
  }
  generate([], 0); 
  return result;
}