void runExercise3() {
  print('--- Exercise 3: Control Flow & Functions ---');
  int score = 75;
  if (score >= 80) {
    print('Grade: A');
  } else if (score >= 60) {
    print('Grade: B');
  } else {
    print('Grade: C');
  }
  int day = 3;
  switch (day) {
    case 1:
      print('Monday');
      break;
    case 2:
      print('Tuesday');
      break;
    case 3:
      print('Wednesday');
      break;
    default:
      print('Other day');
  }
  List<String> names = ['Alice', 'Bob', 'Charlie'];
  for (int i = 0; i < names.length; i++) {
    print('For loop: ${names[i]}');
  }
  for (var name in names) {
    print('For-in loop: $name');
  }
  names.forEach((name) {
    print('forEach loop: $name');
  });
  print('Sum: ${add(3, 4)}');
  print('Multiply: ${multiply(3, 4)}');
}
int add(int a, int b) {
  return a + b;
}
int multiply(int a, int b) => a * b;
