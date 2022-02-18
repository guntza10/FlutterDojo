import 'dart:math';

enum Day {
  Mon,
  Tue,
  Wed,
  Thr,
  Fri,
}

void main() {
  Day favDay = Day.Fri;
  print('value : ${favDay}');
  print('index : ${favDay.index}');
}
