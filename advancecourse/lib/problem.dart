func() {
  List random = ['yassine', 'morad', 'salim', 'ali'];
  random.shuffle();
  return random;
}

void main() {
  print(func());
}
