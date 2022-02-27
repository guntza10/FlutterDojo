import 'dart:math';

// โดยปกติเราสามารถ extends ได้แค่ class เดียวเท่านั้น (inheritance)
// interfaces คือ set ของ method ที่เราจะ define ไว้เพื่อให้ class อื่นๆ implement ไปใช้เป็นต้นแบบว่าจะต้องมี method พวกๆนี้นะ แต่ข้างใน method ของ interfaces จะไม่ได้มี logic อะไร
// ใน dart ไม่มี syntax interfaces เลยใช้ class กำหนดเป็น interfaces แทนซึ่งก็คือ class ที่มีแค่เพียง method

class PrintLaser {
  void print_laser() {}
}

class PrintInkJet {
  void print_inkjet() {}
}

class Print implements PrintLaser, PrintInkJet {
  void print_laser() {}
  void print_inkjet() {}
}

void main() {}
