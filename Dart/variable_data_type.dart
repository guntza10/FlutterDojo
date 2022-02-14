void main() {
  // dynamic type define
  var name = "Gunt";
  // explicit type define
  String name2 = 'Gunt2';

  // dynamic type can assign anything
  dynamic anything = 20;
  anything = 'String';

  // late คือการที่เรา define variable แต่ยังไม่ได้ init value ให้มัน และต้องการจะ init value ให้ทีหลัง
  late int var1;
  int age = 26;
  double money = 100.52;
  bool canVote = false;

  // string interpolation
  print('binding value with strin interpolation ex.money: ${money}');

  // variable ไม่สามารถเป็น Null ได้ ถ้ามันสามารถเป็น Null ได้ควรใช้ ? ต่อท้าย type
  int? intCanNull;
  String? stringCanNull;
  print(
      'variable can be null ex. intCanNull: ${intCanNull},stringCanNull: ${stringCanNull}');

  // final คือการประกาศ constant variable ไม่สามารถเปลี่ยนแปลงค่าได้(ไม่สามารถ re-assign variable ให้มันใหม่ได้)
  final PI = 3.14;
}
