void main() {
  String sNum = '45';
  // convert string to int
  int iNum = int.parse(sNum);
  // convert int to string
  sNum = iNum.toString();
  // convert string to double
  double dNum = double.parse(sNum);

  // ถ้า value ที่ต้องการจะ casting ไม่ถูกต้อง ไม่สามารถ casting ได้มันจะ error ถ้าต้องการ casting โดยที่ value ไม่ถูกต้องและ return null กลับมาให้ใช้ tryParse()
  double? dNum2 = double.tryParse('1.2AB');
  print('dNum2: ${dNum2}');
}
