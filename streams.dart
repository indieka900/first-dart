main() async{
  
  Stream <int> stream = counterStream(5);
  int sum = await sumStream(stream);
  print(sum );
}

Stream<int> counterStream(int max) async* {
  for (int i = 0; i < max; i++) {
    yield i;
    //print(i);
  }
}

Future<int> sumStream(Stream<int> stream) async {
  int sum = 0;
  await for (int value in stream) {
    sum += value;
  }
  return sum;
}
