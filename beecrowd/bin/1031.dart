import 'dart:io';

void main() {
  while (true) {
    int n = int.parse(stdin.readLineSync()!);
    if (n == 0) break;
    final mainList = List.generate(n, (int index) => index + 1);
    findCorrectSalt(1, mainList);
  }
}

void findCorrectSalt(int salt, List<int> main) {
  var copy = List.from(main)..removeAt(0);
  int currentIndex = 0;
  while (copy.length > 1) {
    currentIndex = (currentIndex + salt - 1) % copy.length;
    copy.removeAt(currentIndex);
  }

  if (copy[0] == 13) {
    return print(salt);
  }

  findCorrectSalt(salt + 1, main);
}
