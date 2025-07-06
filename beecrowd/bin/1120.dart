import 'dart:io';

void main() {
  while (true) {
    List<String> input = stdin.readLineSync()!.split(" ");
    int a = int.parse(input[0]);
    String b = input[1];
    if (a == 0 && b == "0") break;

    String result = "";

    for (int i = 0; i < b.length; i++) {
      var digit = int.parse(b[i]);
      result += a != digit ? digit.toString() : "";
    }

    result = result.replaceFirst(RegExp(r'^0+'), '');

    print(result.isEmpty ? 0 : result);
  }
}
