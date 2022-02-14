import 'dart:math';

void main() {
  print('5 + 4 = ${5 + 4}');
  print('5 - 4 = ${5 - 4}');
  print('5 * 4 = ${5 * 4}');
  print('5 / 4 = ${5 / 4}');
  print('5 ~/ 4 = ${5 ~/ 4}'); // หารจำนวนเต็ม ไม่เอาเศษ
  print('5 % 4 = ${5 % 4}'); // mod หารเอาเศษ

  // short hand increment,decrement
  var n1 = 5;
  print('n1++ = ${n1++}'); // + ทีหลัง
  print('++n1 = ${++n1}'); // + ก่อน
  var n2 = 5;
  print('n2-- = ${n2--}'); // - ทีหลัง
  print('--n2 = ${--n2}'); // - ก่อน

  // math function of dart:math library
  var m2 = 34;
  var m3 = 3.4;
  print('Even ${m2.isEven}');
  print('Odd ${m2.isOdd}');
  print('Abs ${(-1 * m2).abs()}'); // absolute
  print('Ceil 3.4 ${m3.ceil()}'); // ปัดขึ้น
  print('Floor 3.4 ${m3.floor()}'); // ปัดลง
  print('Round 3.4 ${m3.round()}'); // >.5 ปัดขึ้น, <.5 ปัดลง
  print('Truncate 3.4 ${m3.truncate()}'); // ตัดทศนิยมออก
  print(
      'Compare ${m2.compareTo(m3)}'); // compare Return 0: =, 1: l > r, -1: l < r
  print('Natural Log 10 ${log(10)}');
  print('Max ${max(10, 12)}');
  print('Min ${min(10, 12)}');
  print('3^2 ${pow(3, 2)}'); // exponential ยกกำลัง
  print('Sqrt 9 ${sqrt(9)}'); // square root

  // Random Function
  Random r1 = Random();
  print('Random ${r1.nextInt(100)}'); // random int ที่ไม่เกิน 100
  print('e ${e}'); // e
  print('Pi ${pi}'); // pi
}
