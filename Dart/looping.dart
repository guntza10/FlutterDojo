import 'dart:math';

void main() {
  Random r = Random();
  var l1 = List<int>.generate(5, (int index) => r.nextInt(100));

  // for loop => เป็น looping ที่ต้องใช้ ​index ในการ ref element แต่ละตัว และมีช่วง range ในการ loop
  for (var i = 0; i < l1.length; i++) {
    print(l1[i]);
  }

  // forEach => เป็น looping ที่ไม่สน index เป็นการ looping element แต่ละตัวได้เลย
  l1.forEach((val) => print(val * 2));

  // for loop 2 => เป็น looping for อีกรูปแบบที่ looping element แต่ละตัวได้เลย ไม่สน index
  var str = 'Bob Sue Tom';
  for (var person in str.split(" ")) {
    print(person);
  }

  // while loop => เป็น looping ที่เราไม่รู้จำนวนครั้งในการ loop, loop จะหยุดก็ต่อเมื่อ condition ไม่ถูกต้อง
  var i = 1;
  while (i < 10) {
    if (i % 2 == 0) {
      i += 1;
      continue;
    }

    if (i == 7) {
      break;
    }

    print(i);
    i += 1;
  }

  // do while => ทำก่อนแล้วค่อยเข้า check condition while loop ต่างจาก while ตรงที่จะเข้า check condition while loop เลย
  var lucky = r.nextInt(10);
  var guess = -1;
  do {
    guess += 1;
    print('Guess: $guess');
  } while (lucky != guess);
  print("Lucky: $lucky");
}
