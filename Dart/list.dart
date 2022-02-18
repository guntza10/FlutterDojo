import 'dart:math';

void main() {
  var l1 = <String>[];
  List<String> l2 = ['B', 'A'];
  var l3 = [1234, 'Main', 'Gunt'];
  print('Index 1 : ${l3[1]}');

  // list.filled(space ที่เราต้องการใน list, data ที่เราต้องการยัดใส่ space ที่เราเตรียมไว้)
  var l4 = List<int>.filled(3, 0);
  print('l4 : ${l4}');

  // add data
  l2.add('C');
  // add data ใน list เข้าไปอีก list นึง
  l2.addAll(['D', 'E', 'F']);
  // length
  print('l2 : ${l2}');
  print('Length l2 : ${l2.length}');
  // contain
  print("Main : ${l3.contains('Main')}");
  // sort => compare Return 0: =, 1: l > r, -1: l < r
  l2.sort((a, b) => a.compareTo(b));

  // for list
  for (var val in l2) {
    print(val);
  }
  // find index list
  var FIndex = l2.indexOf("F");
  // remove with index
  l2.removeAt(FIndex);
  // remove all element in list
  l2.clear();

  // auto generate list
  Random r2 = Random();
  var l5 = List<int>.generate(5, (index) => r2.nextInt(100));
  for (var val in l5) {
    print(val);
  }
  // first
  print('1st : ${l5.first}');
  print('last : ${l5.last}');

  // iterable
  Iterable<int> i1 = l5.getRange(0,
      5); // getRange(start,end) => เอาตั้งแต่ start ถึง end โดยที่ไม่รวม end ไม่สามารถเกิน length ได้ ไม่งั้น error
  for (var val in i1) {
    print(val);
  }

  // convert list ot string
  var s7 = l5.join(" ");
  print(s7);
}
