func() {
  String numbers = '35231';
  List newList = [];
  for (int x = 0; x < numbers.length; x += 1) {
    newList.insert(0, numbers[x]);
  }

  return newList;
}

void main() {
  print(func());
}
