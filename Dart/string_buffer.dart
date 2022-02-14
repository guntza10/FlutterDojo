void main() {
  var buff = StringBuffer();
  for (var i = 0; i < 9; i++) {
    buff.write("$i");
  }
  print(buff.toString());

  buff.write(9);
  buff.writeAll([10, 11, 12]);
  print(buff.toString());
  print("Length: ${buff.length}");
  // สามารถใช้ isEmpty,isNotEmpty ได้ หรือ function อะไรก็ได้ที่มีใน string
}
