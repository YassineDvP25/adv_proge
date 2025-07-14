func() {
  Map test = {'name': 'John', 'age': 30, 'city': 'New York'};
  final ss = test.entries.map((e) {
    final value = e.value;
    return "${value.join(', ')}";
  });
  return ss;
}

void main() {
  print(func());
}
