void main() {
  // runes ก็คือ int represent all characters

  var num1 = '\u{0031}';
  print(num1);

  String uc1 = "Strange";
  print('t : ${uc1.codeUnitAt(1)}');
  print(uc1.codeUnits);
  uc1.runes.forEach((int r1) {
    var c1 = String.fromCharCode(r1);
    print(c1);
  });
}
