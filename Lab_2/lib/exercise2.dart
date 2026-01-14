void runExercise2() {
  print('--- Exercise 2: Collections & Operators ---');
  List<int> numbers = [1, 2, 3];
  numbers.add(4);
  numbers.remove(2);
  print('List: $numbers');
  int a = 10;
  int b = 5;
  print('a + b = ${a + b}');
  print('a > b = ${a > b}');
  print('a == b = ${a == b}');
  print('Logical AND: ${a > b && b > 0}');
  Set<String> fruits = {'Apple', 'Banana', 'Apple'};
  fruits.add('Orange');
  print('Set: $fruits');
  Map<String, int> scores = {
    'Math': 90,
    'Science': 85,
  };
  scores['English'] = 88;
  print('Map: $scores');
}
