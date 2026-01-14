import 'dart:async';
Future<void> runExercise5() async {
  print('--- Exercise 5: Async, Null Safety & Streams ---');
  print('Loading data...');
  String result = await fetchData();
  print(result);
  String? nullableName;
  print(nullableName ?? 'Name is null');
  nullableName = 'Dart Student';
  print(nullableName!);
  Stream<int> stream = Stream.periodic(
    Duration(seconds: 1),
        (count) => count + 1,
  ).take(3);
  await for (var value in stream) {
    print('Stream value: $value');
  }
}
Future<String> fetchData() async {
  await Future.delayed(Duration(seconds: 2));
  return 'Data loaded successfully!';
}
