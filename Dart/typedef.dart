import 'dart:math';

typedef DoMath(int n, int n2);
add(int n, int n2) {
  print('${n} + ${n2} = ${n + n2}');
}

sub(int n, int n2) {
  print('${n} - ${n2} = ${n - n2}');
}

void main() {
  // typedef เหมือนเป็นการ define function ว่าให้รับ parameter เป็นแบบไหน แล้วเราก็สร้าง function follow ตาม typedef ที่เรากำหนดขึ้น
  // typedef DoMath ให้เราสร้าง func ที่รับ int 2 ตัวเป็น parameter
  // สร้าง function add,sub ที่รับ int 2 ตัวเป็น parameter แต่ทำงาน Logic ต่างกัน
  DoMath m_function = add;
  m_function(5, 4);
  m_function = sub;
  m_function(5, 4);
}
